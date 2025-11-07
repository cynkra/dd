# DuckDB function corr

Returns the correlation coefficient for non-NULL pairs in a group.

## Usage

``` r
corr(y = DOUBLE, x = DOUBLE)
```

## Arguments

- y:

  `DOUBLE`

- x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    COVAR_POP(y, x) / (STDDEV_POP(x) * STDDEV_POP(y))
