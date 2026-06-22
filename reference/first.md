# DuckDB function first

Returns the first value (NULL or non-NULL) from arg. This function is
affected by ordering.

## Arguments

- arg:

  `DECIMAL | ANY`

- col0:

  `T`

## Value

`DECIMAL | ANY | T`

## Overloads

- `first(arg = DECIMAL)`

- `first(arg = ANY)`

- `first(col0 = T)`

## SQL examples

    first(A)
