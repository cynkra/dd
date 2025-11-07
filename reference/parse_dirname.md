# DuckDB function parse_dirname

Returns the top-level directory name from the given `path`. `separator`
options: `system`, `both_slash` (default), `forward_slash`, `backslash`.

## Arguments

- path:

  `VARCHAR`

- separator:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `parse_dirname(path = VARCHAR)`

- `parse_dirname(path = VARCHAR, separator = VARCHAR)`

## SQL examples

    parse_dirname('path/to/file.csv', 'system')
