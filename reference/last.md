# DuckDB function last

Returns the last value of a column. This function is affected by
ordering.

## Arguments

- arg:

  `DECIMAL | ANY`

## Value

`DECIMAL | ANY`

## Overloads

- `last(arg = DECIMAL)`

- `last(arg = ANY)`

## SQL examples

    last(A)
