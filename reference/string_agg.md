# DuckDB function string_agg

Concatenates the column string values with an optional separator.

## Arguments

- str:

  `ANY`

- arg:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `string_agg(str = ANY)`

- `string_agg(str = ANY, arg = VARCHAR)`

## SQL examples

    string_agg(A, '-')
