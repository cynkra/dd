# DuckDB function parse_path

Returns a list of the components (directories and filename) in the
`path` similarly to Python's `pathlib.parts` function. `separator`
options: `system`, `both_slash` (default), `forward_slash`, `backslash`.

## Arguments

- path:

  `VARCHAR`

- separator:

  `VARCHAR`

## Value

`VARCHAR[]`

## Overloads

- `parse_path(path = VARCHAR)`

- `parse_path(path = VARCHAR, separator = VARCHAR)`

## SQL examples

    parse_path('path/to/file.csv', 'system')
