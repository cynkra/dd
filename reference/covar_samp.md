# DuckDB function covar_samp

Returns the sample covariance for non-NULL pairs in a group.

## Usage

``` r
covar_samp(y, x)
```

## Arguments

- y, x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    (SUM(x*y) - SUM(x) * SUM(y) / COUNT(*)) / (COUNT(*) - 1)
