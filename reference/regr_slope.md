# DuckDB function regr_slope

Returns the slope of the linear regression line for non-NULL pairs in a
group.

## Usage

``` r
regr_slope(y = DOUBLE, x = DOUBLE)
```

## Arguments

- y:

  `DOUBLE`

- x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    COVAR_POP(x, y) / VAR_POP(x)
