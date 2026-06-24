# Proposal: per-argument descriptions for DuckDB functions

This file is a working note for an **upstream DuckDB** improvement. It is not
part of the R package (it is listed in `.Rbuildignore`).

`dd` documents every DuckDB function from `duckdb_functions()` plus the source
`functions.json` files. Those give us argument *names* and *types* and a
function-level *description*, but **no description of what each argument means**.
As a result the generated `@param` entries can only show the type. This note
drafts the upstream changes needed to add per-argument descriptions, and shows
concrete `functions.json` extensions for a handful of functions (semantics
inferred from each function's existing description, examples, and behaviour).

## What we need

Ordered from smallest (already usable by `dd`, which reads `functions.json`
directly) to full first-class catalog support.

1. **`functions.json` schema** — allow an optional `description` on each
   parameter object:
   `{"name": "index", "type": "BIGINT", "description": "1-based position."}`.
   Purely additive; existing entries stay valid. This alone unblocks `dd`.
2. **`scripts/generate_functions.py`** — add a parameter-description line
   paralleling `get_parameter_line` (same `\001` variant / `\002` element
   encoding) and emit it into the generated `*_functions.hpp`, with a length
   check against the parameter list.
3. **`FunctionDescription`** (`src/include/duckdb/function/function.hpp`) — add
   `vector<string> parameter_descriptions;` parallel to `parameter_names`, and
   populate it from the generated data (and via the registration macros for
   functions defined directly in C++, where it defaults to empty).
4. **`duckdb_functions()`** (`src/function/table/system/duckdb_functions.cpp`) —
   add a `parameter_descriptions` column `LIST(VARCHAR)`, filled from
   `FunctionDescription.parameter_descriptions` the same way `parameters` is
   filled from `parameter_names` (the `ExtractFunctionParameters` path).
   Additive column → backward compatible.
5. **Content** — write the descriptions into `functions.json`. This is the bulk
   of the work and can land incrementally; everything degrades gracefully when
   the field is absent.

Related data gaps noticed while drafting (worth fixing in the same pass):

- Many overloads have no parameter names at all in `functions.json` (the C++
  registration named nothing), so `duckdb_functions()` reports `col0`, `col1`,
  …; `dd` currently recovers names only when the JSON provides them.
- Some flat entries are incomplete, e.g. `date_part` lists `"parameters":
  "ts"` although the function takes `(part, ts)` — names and arity should be
  filled in too.

## How can DuckDB benefit

- **Richer official docs.** The DuckDB SQL function reference is generated from
  these same `functions.json` files, so it could render per-argument help, not
  just the signature.
- **Better tooling.** CLIs, IDEs, and UIs that read `duckdb_functions()` can
  surface argument hints and autocomplete tooltips.
- **One source of truth.** Descriptions authored once in `functions.json` flow
  to the engine, the website, and every binding (Python, R, Java, …) and
  downstream project (such as `dd`) — no per-consumer duplication.
- **Drives completeness.** Adding the field nudges authors to name every
  parameter and to fix incomplete entries (the `col0`/`date_part` gaps above),
  improving metadata quality across the board.

## Implications for DuckDB

- **Backward compatible.** The new `functions.json` field and the new
  `duckdb_functions()` column are additive; existing queries and consumers keep
  working, and a missing description degrades to empty.
- **Authoring burden.** Hundreds of parameters need descriptions; this is the
  main cost. It can land incrementally, function by function, and a CI check
  could warn when a new function or overload omits them.
- **Validation.** The generator should assert that the number of parameter
  descriptions matches the number of parameter names per overload, to catch
  drift.
- **Build and footprint.** Only `generate_functions.py` and the registration
  path change; the extra strings add a negligible amount to the binary.
- **Scope.** Functions registered directly in C++ (not via `functions.json`)
  simply leave the field empty until someone fills it — no migration required.

## Drafted `functions.json` extensions

Each parameter object gains a `description`. (Other fields unchanged; only the
`parameters` blocks are shown.)

### `array_extract` (`src/function/scalar/list/functions.json`)

```json
"variants": [
  { "parameters": [
      { "name": "string", "type": "VARCHAR", "description": "The string to index into." },
      { "name": "index",  "type": "ANY",     "description": "1-based position of the character to extract." } ] },
  { "parameters": [
      { "name": "struct", "type": "STRUCT",  "description": "The STRUCT value." },
      { "name": "entry",  "type": "VARCHAR", "description": "Name of the field to extract." } ] },
  { "parameters": [
      { "name": "struct", "type": "STRUCT",  "description": "The unnamed STRUCT (tuple) value." },
      { "name": "index",  "type": "ANY",     "description": "1-based position of the field to extract." } ] },
  { "parameters": [
      { "name": "list",   "type": "ANY[]",   "description": "The list to index into." },
      { "name": "index",  "type": "ANY",     "description": "1-based position of the element to extract." } ] }
]
```

### `regexp_extract` (`src/function/scalar/string/functions.json`)

```json
"parameters": [
  { "name": "string",  "type": "VARCHAR", "description": "The string to search." },
  { "name": "regex",   "type": "VARCHAR", "description": "The regular expression to match." },
  { "name": "group",   "type": "INTEGER", "description": "Index of the capturing group to return; 0 (the default) returns the whole match." },
  { "name": "options", "type": "VARCHAR", "description": "Optional regex option flags, e.g. 'i' for case-insensitive matching." }
]
```

### `repeat` (`extension/core_functions/scalar/string/functions.json`)

```json
"variants": [
  { "parameters": [
      { "name": "string", "type": "VARCHAR", "description": "The string to repeat." },
      { "name": "count",  "type": "BIGINT",  "description": "Number of times to repeat the input." } ] },
  { "parameters": [
      { "name": "list",   "type": "ANY[]",   "description": "The list to repeat." },
      { "name": "count",  "type": "BIGINT",  "description": "Number of times to repeat the input." } ] },
  { "parameters": [
      { "name": "blob",   "type": "BLOB",    "description": "The blob to repeat." },
      { "name": "count",  "type": "BIGINT",  "description": "Number of times to repeat the input." } ] }
]
```

### `list_slice` / `array_slice` (`extension/core_functions/scalar/list/functions.json`)

```json
"variants": [
  { "parameters": [
      { "name": "list",  "description": "The list or string to slice." },
      { "name": "begin", "description": "1-based start index; negative counts from the end." },
      { "name": "end",   "description": "1-based end index, inclusive; negative counts from the end, NULL runs to the end." } ] },
  { "parameters": [
      { "name": "list",  "description": "The list to slice." },
      { "name": "begin", "description": "1-based start index; negative counts from the end." },
      { "name": "end",   "description": "1-based end index, inclusive; negative counts from the end." },
      { "name": "step",  "description": "Stride between selected elements." } ] }
]
```

### `list_contains` (`src/function/scalar/list/functions.json`)

```json
"parameters": [
  { "name": "list",    "description": "The list to search." },
  { "name": "element", "description": "The value to look for." }
]
```

### `list_transform` (`extension/core_functions/scalar/list/functions.json`)

```json
"parameters": [
  { "name": "list",   "description": "The input list." },
  { "name": "lambda", "description": "A lambda applied to each element; its return type defines the result element type." }
]
```

(Also fixes the current `"parameters": "list,lambda(x)"` flat string, whose
`lambda(x)` is not a clean parameter name.)

### `date_part` (`extension/core_functions/scalar/date/functions.json`)

The current entry only lists `"parameters": "ts"`. Proposed corrected entry:

```json
"parameters": [
  { "name": "part", "type": "VARCHAR",   "description": "The subfield to extract, e.g. 'year', 'month', 'day', 'hour'." },
  { "name": "ts",   "type": "TIMESTAMP", "description": "The temporal value to extract the subfield from." }
]
```

## How `dd` would consume this

Once parameters carry a `description`, `scripts/generate.R` would emit a
documented `@param` line, for example

```
#' @param index 1-based position of the element to extract. (`BIGINT`)
```

instead of showing only the type, reusing the existing overload and
argument-name matching. If the `duckdb_functions()` column also lands, `dd`
would prefer it and fall back to the JSON — mirroring how it already recovers
argument names.
