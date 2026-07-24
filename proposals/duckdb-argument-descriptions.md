# Proposal: per-argument descriptions for DuckDB functions

This file is a working note for an **upstream DuckDB** improvement. It is not
part of the R package (it is listed in `.Rbuildignore`).

## Motivation

`dd` turns every DuckDB function into an R help page, so `?acos` or
[`array_extract`](https://cynkra.github.io/dd/reference/array_extract.html)
resolve straight from the R console. Those pages are generated from
`duckdb_functions()` and the source `functions.json` files, which supply
argument *names* and *types* and a function-level *description* — but nothing
about what each argument means. The `@param` entries can therefore only repeat
the type:

```
Arguments:
    list: T[]
    index: BIGINT
```

A hand-written R function reads very differently. `duckdb::duckdb()` describes
its `dbdir` argument as "Location for database files. Should be a path to an
existing directory in the file system. With the default (or `""`), all data is
kept in RAM." — a sentence that says what to pass and what happens if you don't.
That prose is the baseline an R user expects from `?`. DuckDB already knows what
`array_extract`'s `index` does; it just has nowhere to write it down where `dd`
(or any other consumer) can read it.

This note drafts that missing slot — a per-argument `description` in
`functions.json` — and sketches entries for a handful of functions (semantics
inferred from each function's existing description, examples, and behaviour).

## What `dd` needs

`dd` reads `functions.json` directly, so it only needs the descriptions to
exist there:

1. **Schema** — allow an optional `description` on each parameter object:
   `{"name": "index", "type": "BIGINT", "description": "1-based position."}`.
   Purely additive; existing entries stay valid.
2. **Content** — write the descriptions. This is the bulk of the work; it can
   land incrementally, and everything degrades gracefully when the field is
   absent.

Two related data gaps are worth fixing in the same pass:

- Many overloads have no parameter names at all (the C++ registration named
  nothing), so `duckdb_functions()` reports `col0`, `col1`, …; `dd` recovers
  names only when the JSON provides them.
- Some flat entries are incomplete, e.g. `date_part` lists `"parameters":
  "ts"` although the function takes `(part, ts)`.

## Surfacing it engine-wide

Steps 1–2 are enough for `dd`. To carry the descriptions through the engine —
so `duckdb_functions()` and every binding expose them, not just consumers that
parse `functions.json` — DuckDB would also:

3. **`scripts/generate_functions.py`** — add a parameter-description line
   paralleling `get_parameter_line` (same `\001` variant / `\002` element
   encoding), emit it into the generated `*_functions.hpp`, and assert its
   length matches the parameter list.
4. **`FunctionDescription`** (`src/include/duckdb/function/function.hpp`) — add
   `vector<string> parameter_descriptions;` alongside `parameter_names`, filled
   from the generated data. Functions defined directly in C++ leave it empty.
5. **`duckdb_functions()`** (`src/function/table/system/duckdb_functions.cpp`) —
   add a `parameter_descriptions` column of `LIST(VARCHAR)`, filled the same way
   `parameters` is filled from `parameter_names`. Additive, so existing queries
   keep working.

## Why it helps DuckDB

- **Richer official docs.** The DuckDB SQL function reference is generated from
  these same files, so it could render per-argument help, not just the
  signature.
- **Better tooling.** CLIs, IDEs, and UIs that read `duckdb_functions()` can
  surface argument hints and autocomplete tooltips.
- **One source of truth.** Descriptions authored once flow to the engine, the
  website, and every binding (Python, R, Java, …) — no per-consumer
  duplication.
- **Drives completeness.** Adding the field nudges authors to name every
  parameter and fix the incomplete entries above.

The cost is the authoring itself: hundreds of parameters, best filled in
function by function, with a CI check to warn when a new overload omits them.
Everything else is cheap — only the generator and the registration path change,
the extra strings are negligible, and both the new field and the new column are
backward compatible.

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
