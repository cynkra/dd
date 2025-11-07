# DuckDB function substr

Extracts substring starting from character `start` up to the end of the
string. If optional argument `length` is set, extracts a substring of
`length` characters instead. Note that a `start` value of `1` refers to
the first character of the `string`.

## Arguments

- string:

  `VARCHAR`

- start:

  `BIGINT`

- length:

  `BIGINT`

## Value

`VARCHAR`

## Overloads

- `substr(string = VARCHAR, start = BIGINT, length = BIGINT)`

- `substr(string = VARCHAR, start = BIGINT)`

## SQL examples

    substring('Hello', 2)
    substring('Hello', 2, 2)
