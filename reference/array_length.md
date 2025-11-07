# DuckDB function array_length

Returns the length of the `list`.

`array_length` for lists with dimensions other than 1 not implemented.

## Arguments

- list:

  `ANY[]`

- dimension:

  `BIGINT`

## Value

`BIGINT`

## Overloads

- `` array_length(list = `ANY[]`) ``

- `` array_length(list = `ANY[]`, dimension = BIGINT) ``

## SQL examples

    array_length([1, 2, 3])
