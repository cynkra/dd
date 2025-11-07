# DuckDB function regr_sxy

Returns the population covariance of input values.

## Usage

``` r
regr_sxy(y = DOUBLE, x = DOUBLE)
```

## Arguments

- y:

  `DOUBLE`

- x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    REGR_COUNT(y, x) * COVAR_POP(y, x)
