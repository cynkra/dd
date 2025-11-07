# DuckDB function regr_intercept

Returns the intercept of the univariate linear regression line for
non-NULL pairs in a group.

## Usage

``` r
regr_intercept(y = DOUBLE, x = DOUBLE)
```

## Arguments

- y:

  `DOUBLE`

- x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    AVG(y)-REGR_SLOPE(y, x)*AVG(x)
