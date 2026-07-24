# DuckDB function covar_pop

Returns the population covariance of input values.

## Usage

``` r
covar_pop(y, x)
```

## Arguments

- y, x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    (SUM(x*y) - SUM(x) * SUM(y) / COUNT(*)) / COUNT(*)
