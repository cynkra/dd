# DuckDB function listagg

Concatenates the column string values with an optional separator.

## Arguments

- str:

  `ANY`

- arg:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `listagg(str = ANY)`

- `listagg(str = ANY, arg = VARCHAR)`

## SQL examples

    listagg(A, '-')
