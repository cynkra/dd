# DuckDB function parse_dirpath

Returns the head of the `path` (the pathname until the last slash)
similarly to Python's `os.path.dirname`. `separator` options: `system`,
`both_slash` (default), `forward_slash`, `backslash`.

## Arguments

- path:

  `VARCHAR`

- separator:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `parse_dirpath(path = VARCHAR)`

- `parse_dirpath(path = VARCHAR, separator = VARCHAR)`

## SQL examples

    parse_dirpath('path/to/file.csv', 'forward_slash')
