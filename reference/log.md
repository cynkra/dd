# DuckDB function log

Computes the logarithm of x to base b. b may be omitted, in which case
the default 10.

## Arguments

- b:

  `DOUBLE`

- x:

  `DOUBLE`

## Value

`DOUBLE`

## Overloads

- `log(b = DOUBLE)`

- `log(b = DOUBLE, x = DOUBLE)`

## SQL examples

    log(2, 64)
