# DuckDB function regr_sxx

DuckDB function `regr_sxx()`.

## Usage

``` r
regr_sxx(y = DOUBLE, x = DOUBLE)
```

## Arguments

- y:

  `DOUBLE`

- x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    REGR_COUNT(y, x) * VAR_POP(x)
