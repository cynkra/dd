# DuckDB function parse_filename

Returns the last component of the `path` similarly to Python's
`os.path.basename` function. If `trim_extension` is `true`, the file
extension will be removed (defaults to `false`). `separator` options:
`system`, `both_slash` (default), `forward_slash`, `backslash`.

## Arguments

- string:

  `VARCHAR`

- trim_extension:

  `VARCHAR | BOOLEAN`

- separator:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `parse_filename(string = VARCHAR)`

- `parse_filename(string = VARCHAR, trim_extension = VARCHAR)`

- `parse_filename(string = VARCHAR, trim_extension = BOOLEAN)`

- `parse_filename(string = VARCHAR, trim_extension = BOOLEAN, separator = VARCHAR)`

## SQL examples

    parse_filename('path/to/file.csv', true, 'forward_slash')
