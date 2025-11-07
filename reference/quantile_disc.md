# DuckDB function quantile_disc

Returns the exact quantile number between 0 and 1 . If pos is a LIST of
FLOATs, then the result is a LIST of the corresponding exact quantiles.

## Arguments

- x:

  `ANY`

- pos:

  `DOUBLE | DOUBLE[]`

## Value

`ANY`

## Overloads

- `quantile_disc(x = ANY, pos = DOUBLE)`

- `` quantile_disc(x = ANY, pos = `DOUBLE[]`) ``

- `quantile_disc(x = ANY)`

## SQL examples

    quantile_disc(x, 0.5)
