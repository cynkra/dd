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

## Required DuckDB changes

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

Once parameters carry a `description`, `scripts/generate.R` would emit
`#' @param <name> <description> (\`<TYPE>\`)` instead of just the type, reusing
the existing overload/argument-name matching. If step 4 also lands, `dd` would
prefer the `duckdb_functions()` column and fall back to the JSON — mirroring how
it already recovers argument names.
