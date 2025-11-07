# DuckDB function first

Returns the first value (NULL or non-NULL) from arg. This function is
affected by ordering.

## Arguments

- arg:

  `DECIMAL | ANY`

## Value

`DECIMAL | ANY`

## Overloads

- `first(arg = DECIMAL)`

- `first(arg = ANY)`

## SQL examples

    first(A)
