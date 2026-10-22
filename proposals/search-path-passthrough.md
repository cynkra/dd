# Proposal: search-path pass-through via active bindings (`dd_hide()`)

This is an implementation plan; nothing here is implemented yet.
All mechanisms marked *verified* were confirmed experimentally
with a prototype package on R 4.5.3
before this plan was written.

## Problem

`dd` exports a stub for every DuckDB function so that `?abs` and
friends resolve in R's help system.
Attaching the package copies all 731 exports into the
`package:dd` environment at position 2 of the search path,
where they mask everything below — including base R.

70 exports collide with the default search path
(60 in base, 8 in stats, `lcm` in graphics, `show` in methods),
and the collisions include the arithmetic and logical operators
and the formula operator.
After `library(dd)`, in an otherwise fresh session (*verified*):

```r
1 & TRUE     #> Error: DuckDB function &() is not available in R.
2 * 3        #> Error: DuckDB function *() is not available in R.
sum(1:3)     #> Error: DuckDB function sum() is not available in R.
abs(-2)      #> Error: DuckDB function abs() is not available in R.
class(y ~ x) #> Error: unused argument (x)
mean(1:4)    #> Error: DuckDB function mean() is not available in R.
pi           #> function () { stop("DuckDB function pi() is not ...") }
```

Since `*`, `&`, and `~` are resolved through the search path
like any other symbol,
essentially all top-level R code breaks,
not just code that happens to call a colliding function.
(`length()` itself is currently filtered out of generation in
`scripts/generate.R` because it breaks `devtools::document()`,
but it stands in for the whole class of collisions
and can return once this proposal lands.)

## Goal

- `library(dd)` keeps its benefits —
  `?abs` routes to dd's help pages,
  autocompletion sees every DuckDB function —
  without changing what any symbol *evaluates to*.
- After hiding, every dd export resolves to
  the first binding found on the search path *as if dd were not attached*;
  names that exist only in dd keep resolving to their stub.
- Hidden is the default in interactive sessions.
- Non-interactive sessions (`R CMD check`, scripts)
  see the current behavior: plain stubs.
- `dd_hide()` / `dd_unhide()` toggle at any time.

## Design

### Three access routes, only one changes

| Route | Today | After this proposal |
|---|---|---|
| `dd::abs`, `dd::length` | stub | stub (namespace untouched) |
| `dd$abs` (the `dd` list) | stub | stub (list untouched) |
| bare `abs` via search path | stub (masks base) | active binding: stub when visible, pass-through when hidden |

Keeping the namespace untouched is what makes the change
invisible to `R CMD check` (see below).

### Mechanism

`attachNamespace()` copies the exports into the `package:dd`
environment, runs `.onAttach()`, and only *then* locks the
environment.
During the hook the environment is still mutable (*verified*),
so `.onAttach()` can swap every generated stub binding
for an active binding:

```r
.onAttach <- function(libname, pkgname) {
  ns <- base::topenv(base::environment())
  attach_env <- base::as.environment(base::paste0("package:", pkgname))
  the$hidden <- base::getOption("dd.hide", default = base::interactive())
  for (name in base::names(dd)) {
    stub <- base::get(name, envir = ns)
    base::rm(list = name, envir = attach_env)
    base::makeActiveBinding(name, make_resolver(name, stub, attach_env), attach_env)
  }
}

make_resolver <- function(name, stub, attach_env) {
  force(name); force(stub); force(attach_env)
  function() {
    if (!the$hidden) {
      return(stub)
    }
    base::get0(name, envir = base::parent.env(attach_env), ifnotfound = stub)
  }
}
```

`the` is a package-internal environment
(`the <- new.env(parent = emptyenv())`) holding the single
`hidden` flag.
`dd_hide()` and `dd_unhide()` do nothing but flip that flag.
Because the bindings are *always* active
and only their behavior depends on the flag,
toggling works even after the environment is locked —
no `unlockBinding()`, no `assignInNamespace()`,
nothing CRAN would object to (*verified*: toggling works
in both directions after attach).

Details that matter:

- **Resolution is per-access and dynamic.**
  `parent.env(attach_env)` is evaluated on every access,
  so packages attached *after* dd sit in front of it
  and win by normal search-path order,
  while packages attached *before* dd sit behind it
  and are found by the resolver.
  Both directions equal "dd is invisible" (*verified*
  with an environment attached below dd).
- **`get0()` with default mode (`"any"`), not `mode = "function"`.**
  `pi` must resolve to base's numeric constant, not skip past it.
  For *call* resolution R itself already skips non-function values,
  so `pi` as a value gives `3.141593`
  and a call to a name that is only a function inside dd
  behaves exactly as it would without dd (*verified*).
- **Fallback to the stub.**
  For DuckDB-only names (e.g. `list_zip`)
  the resolver finds nothing after dd and returns the stub,
  so the informative error message
  and `args()`/completion metadata survive (*verified*).
- **Capture `attach_env` at install time.**
  Avoids a `search()` scan per access;
  on detach + re-attach, `.onAttach()` runs again
  and captures the fresh environment.
- **All hand-written code in this feature must
  `base::`-qualify every base function it uses.**
  Inside dd's namespace, bare `list`, `get`, `substr`, …
  resolve to dd's *own stubs* before base.
  The generated `zzz-dd.R` already writes `base::list(...)`
  for exactly this reason.
- **Excluded from the swap:** the package's own API —
  `dd`, `dd_hide`, `dd_unhide` —
  i.e. everything not in `names(dd)`.

### Defaults and the interactive / non-interactive split

The flag is initialized at attach time to
`getOption("dd.hide", default = interactive())`:

- Interactive session: hidden — R behaves normally,
  dd contributes help and completion only.
- `R CMD check`, `Rscript`, batch: visible —
  identical to today's behavior, byte for byte,
  because a forced binding returns the very same stub object.
- `options(dd.hide = TRUE/FALSE)` before `library(dd)`
  overrides the default either way
  (e.g. in `.Rprofile`, or in knitr documents,
  which are non-interactive but may want hiding — see Open questions).

### Startup message bonus (verified)

`library()` computes its masking report *after* `.onAttach()` has run,
and it exempts bindings whose value is identical
to the object they mask.
When dd attaches hidden, every colliding binding
already resolves to the masked original,
so the entire
"The following objects are masked from 'package:base': …"
wall of text disappears.
When visible, the report prints exactly as today.
A short `packageStartupMessage()`
("DuckDB stubs hidden; `dd_unhide()` to expose, `dd$fun` to browse")
should replace it.

## Would autocomplete still work?

**Yes** — this was verified for R's own completion engine
(used by the terminal, ESS, and radian):

- Name completion enumerates search-path environments with `ls()`,
  which lists active bindings without forcing them.
  `leng<TAB>` still offers `length(`;
  DuckDB-only names like `list_zip(` still complete (*verified*).
- Argument completion (`length(<TAB>`) forces the binding
  via `get()` and reads `formals()`.
  Hidden, it reports the *resolved* target's arguments
  (`x=` from `base::length`) — arguably better than before;
  visible, it reports the stub's DuckDB-flavored signature (*verified*).
- The resolver is cheap and side-effect-free,
  so completion engines that force bindings are safe to do so.

Not verifiable headless, to be checked manually during implementation:

- **RStudio** enumerates search-path objects
  and forces bindings for signature info;
  expected to behave like base completion. Manual QA item.
- **languageserver** (VS Code) completes from the installed package's
  namespace metadata, which stays untouched;
  names complete, signatures show the stub's formals. Fine.

## R CMD check and CI

- All static checks (`codoc`, usage, S3 consistency,
  cross-references) read the *namespace*, which is unchanged.
- Examples and tests run non-interactively → flag off →
  every access returns the stub → behavior identical to today.
- A prototype package built on this exact mechanism passes
  `R CMD check` with no findings related to the machinery (*verified*;
  the only outputs were a missing-docs warning and license-stub note
  inherent to the throwaway test package).

## Performance (measured)

- Swapping all 730 bindings in `.onAttach()`: **11 ms**, one-time.
- Per-access overhead while hidden:
  ~2 µs with the `get0()` resolver
  (~8 µs with a `tryCatch()`-based one — hence `get0()`),
  versus ~0.2 µs for a direct primitive call.
- Only code whose lexical chain passes through the global environment
  pays this; package code resolves through its own
  namespace/imports and never sees dd's bindings.
  Hot loops in user scripts calling colliding names
  millions of times would notice;
  for interactive use this is negligible.
- If it ever matters, a later optimization can cache the resolved
  value per binding and invalidate on `taskCallback()`
  when `search()` changes. Explicitly out of scope for v1.

## Implementation steps

1. **`R/hide.R`** (hand-written, not generated):
   `the` flag environment, `make_resolver()`,
   `dd_hide()` / `dd_unhide()` with roxygen docs and `@export`,
   everything `base::`-qualified.
2. **`R/zzz.R`** (hand-written): `.onAttach()` as sketched above,
   iterating `names(dd)` — the generated list is the source of truth,
   so **no changes to `scripts/generate.R` are required**.
3. **Startup message** replacing the masking report (see above).
4. **Tests** (bootstrap `tests/testthat/`, none exist today),
   run in `callr::r()` subprocesses so attach state,
   options, and `interactive()` emulation stay isolated:
   - hidden: `1 & TRUE`, `2 * 3`, `sum(1:3)`, `class(y ~ x)`,
     `pi`, `1 && TRUE`, `x@slot`, closures defined in the
     calling environment, `get("length")`, `sapply(l, length)`;
   - hidden, DuckDB-only name → stub error preserved;
   - `dd::abs` and `dd$abs` are stubs regardless of flag;
   - visible: stub errors identical to today;
   - toggling both directions after attach;
   - attach-order dynamics: a package attached after `dd_hide()`
     wins for its names; one attached before dd is still found;
   - masking-message suppression when hidden, presence when visible;
   - completion smoke test via `utils:::.completeToken()`;
   - `options(dd.hide = )` overrides in both directions;
   - `pkgload::load_all()` runs `.onAttach()` against its own
     attach environment — verify the swap works under it.
5. **CI**: existing R CMD check matrix covers the visible path
   automatically once tests exist;
   add one job (or test) setting `options(dd.hide = TRUE)`
   to exercise the hidden path non-interactively.
6. **Docs**: README section ("Why doesn't dd break my session?"),
   `?dd_hide` page, note in `_pkgdown.yml` reference index.
7. **Manual QA**: RStudio completion and Environment pane,
   radian, knitr chunk with `library(dd)`.
8. Consider un-filtering `length` in `scripts/generate.R`
   (the `filter_print(!(function_name %in% c("length")))` line)
   in a follow-up once the mechanism is in,
   if the original `devtools::document()` breakage
   was collision-related.

## Alternatives considered

- **Active bindings in the namespace itself** (installed in
  `.onLoad()` before sealing).
  *Verified to work* — `importIntoEnv()` copies active bindings
  into the attach environment still active,
  and `dd::length` would then pass through too.
  Rejected as the primary design:
  it changes what `R CMD check`'s static checks
  and `dd::`/`dd$` see, for no user-facing gain —
  explicitly writing `dd::length` should mean "give me dd's object".
- **Deleting colliding bindings in `.onAttach()`.**
  Simpler, and help routing would survive
  (help is Rd-index-based, not binding-based),
  but it is irreversible in-session (the environment locks after
  attach, and R no longer offers unlocking),
  loses stub discoverability for the deleted names,
  and needs a hard-coded collision list
  that goes stale as the search path changes.
- **A conflicted-style shim environment** attached in front
  of everything.
  Works in principle, but adds a search-path entry,
  must be maintained on every attach/detach via hooks,
  and duplicates what the attach environment already gives us.
- **Not attaching at all** (`dd$`-only access).
  Defeats the package's purpose:
  `help()` only searches *attached* packages by default,
  so `?abs` would stop routing to dd.

## Open questions

1. **Naming**: `dd_hide()` / `dd_unhide()`,
   or `dd_hide()` / `dd_show()`?
   (`show` collides with methods::show, which dd also stubs —
   mildly amusing, not a technical problem.
   `dd_unhide` is the safer bikeshed.)
2. **Option name**: `dd.hide` vs `dd.hidden` vs `dd.passthrough`.
3. **knitr/rmarkdown**: chunks run non-interactively,
   so a document with `library(dd)` gets visible stubs
   and breaks like today.
   Should the default be
   `interactive() || isTRUE(getOption("knitr.in.progress"))`?
   Recommendation: yes, but it stretches the
   "non-interactive = current definitions" rule stated in the goal,
   so deciding explicitly is better than inheriting it silently.
4. Should `dd_hide()` when already hidden (and vice versa)
   message or stay silent? Recommendation: silent, invisible `TRUE`.
