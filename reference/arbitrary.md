# DuckDB function arbitrary

Returns the first value (NULL or non-NULL) from arg. This function is
affected by ordering.

## Arguments

- arg:

  `DECIMAL | ANY`

## Value

`DECIMAL | ANY`

## Overloads

- `arbitrary(arg = DECIMAL)`

- `arbitrary(arg = ANY)`

## SQL examples

    arbitrary(A)
