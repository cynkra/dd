# DuckDB function group_concat

Concatenates the column string values with an optional separator.

## Arguments

- str:

  `ANY`

- arg:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `group_concat(str = ANY)`

- `group_concat(str = ANY, arg = VARCHAR)`

## SQL examples

    group_concat(A, '-')
