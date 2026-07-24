# DuckDB function regr_sxy

Returns the population covariance of input values.

## Usage

``` r
regr_sxy(y, x)
```

## Arguments

- y, x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    REGR_COUNT(y, x) * COVAR_POP(y, x)
