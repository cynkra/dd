# DuckDB function last

Returns the last value of a column. This function is affected by
ordering.

## Arguments

- arg:

  `DECIMAL | ANY`

- col0:

  `T`

## Value

`DECIMAL | ANY | T`

## Overloads

- `last(arg = DECIMAL)`

- `last(arg = ANY)`

- `last(col0 = T)`

## SQL examples

    last(A)
