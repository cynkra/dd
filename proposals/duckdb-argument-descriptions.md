# Proposal: per-argument descriptions for DuckDB functions

This file is a working note for an upstream DuckDB improvement.
It is not part of the R package (it is listed in `.Rbuildignore`).

## Motivation

The `dd` package turns every DuckDB function into an R help page.
The user needs to install `dd` from r-universe or GitHub, and load it with `library(dd)`.
Then, [`?acos`](https://cynkra.github.io/dd/reference/acos.html)
or [`?array_extract`](https://cynkra.github.io/dd/reference/array_extract.html)
resolve straight from the R console,
and autocompletion works (when used with `duckplyr`).
This package is documentation-only and completely optional.

Those pages are generated from `duckdb_functions()` and the source `functions.json` files,
which supply argument *names* and *types* and a function-level *description*,
but nothing about what each argument means.
The `@param` entries can therefore only repeat the type:

```
Arguments:
    list: T[]
    index: BIGINT
```

A hand-written R function reads very differently.
[`?duckdb::duckdb()`](https://r.duckdb.org/reference/duckdb.html) describes its `dbdir` argument as:

> Location for database files.
> Should be a path to an existing directory in the file system.
> With the default (or `""`), all data is kept in RAM.

This is a sentence that says what to pass and what happens if you don't.
That prose is the baseline an R user expects from `?`.
The exact semantics of `array_extract`'s `index` argument are not obvious from its type alone, and not documented anywhere today.

This note drafts that extension, proposed as a per-argument `description` in `functions.json`.
It also sketches entries for a handful of functions, and how `dd` would consume it.

## What `dd` needs

`dd` reads `functions.json` directly,
so it only needs the descriptions to exist there:

- Schema:

  Allow an optional `description` on each parameter object:
  `{"name": "index", "type": "BIGINT", "description": "1-based position."}`.
  Purely additive, degrades gracefully when absent.

- Content:

  Write the descriptions.
  This is the bulk of the work.

Two related data gaps are worth fixing in the same pass:

- Many overloads have no parameter names at all,
  so `duckdb_functions()` reports `col0`, `col1`, ….
- Some flat entries are incomplete,
  e.g. `date_part` lists `"parameters": "ts"`
  although the function takes `(part, ts)`.

## Engine-wide adoption

Schema and content are enough for `dd`.
To expose in `duckdb_functions()`, the engine must carry the descriptions through the registration path:

1. `scripts/generate_functions.py`:

  Add a parameter-description line paralleling `get_parameter_line`
  (same `\001` variant / `\002` element encoding),
  emit it into the generated `*_functions.hpp`,
  and assert its length matches the parameter list.
2. `FunctionDescription` (`src/include/duckdb/function/function.hpp`):

  Add `vector<string> parameter_descriptions;` alongside `parameter_names`,
  filled from the generated data.
  (To be checked: Functions defined directly in C++ leave it empty or document it there.)

3. `duckdb_functions()` (`src/function/table/system/duckdb_functions.cpp`):

  Add a `parameter_descriptions` column of `LIST(VARCHAR)`,
  filled the same way `parameters` is filled from `parameter_names`.
  Existing queries keep working unless they join with a table that already has the new column.

4. Adapt the static site generator:

  Git-based diffs allow a before-after comparison of the documentation with and without the new descriptions.

## Effect on DuckDB

- Richer official docs.

  The DuckDB SQL function reference is generated from these same files,
  so it could render per-argument help, not just the signature.
- Better tooling.

  CLIs, IDEs, and UIs that read `duckdb_functions()`
  can surface argument hints and autocomplete tooltips.
- One source of truth.

  Descriptions authored once flow to the engine, the website,
  and every binding (Python, R, Java, …).
- Drives completeness.

  Adding the field nudges authors to name every parameter
  and fix the incomplete entries above.

The cost is the authoring:
thousands of parameters, best filled in function by function,
with a CI check to warn when a new overload omits them.
Everything else looks cheap.

## Drafted `functions.json` extensions

Each parameter object gains a `description`.
Only the `parameters` blocks are shown.
For demonstration purposes, this is the exact text as produced by Claude Code using Opus 4.8 unchanged.

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

This change also fixes the current `"parameters": "list,lambda(x)"` flat string,
whose `lambda(x)` is not a clean parameter name.

### `date_part` (`extension/core_functions/scalar/date/functions.json`)

The current entry only lists `"parameters": "ts"`.
Proposed corrected entry:

```json
"parameters": [
  { "name": "part", "type": "VARCHAR",   "description": "The subfield to extract, e.g. 'year', 'month', 'day', 'hour'." },
  { "name": "ts",   "type": "TIMESTAMP", "description": "The temporal value to extract the subfield from." }
]
```

## Open questions

- How to deal with extensions?
  We would expect them do follow suit step by step.
  Adoption for community extensions will be even slower than with the builtin function and core extensions.

- Is YAML better suited for storing longer documentation strings?

- Should we also look into documentation of examples?

## Appendix: How `dd` would consume this

Once parameters carry a `description`,
`scripts/generate.R` would emit a documented `@param` line,
for example

```
#' @param index 1-based position of the element to extract. (`BIGINT`)
```

instead of showing only the type.
When the `duckdb_functions()` column becomes available,
`dd` would prefer it and only fall back to the JSON.
