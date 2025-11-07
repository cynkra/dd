# DuckDB function regr_syy

DuckDB function `regr_syy()`.

## Usage

``` r
regr_syy(y = DOUBLE, x = DOUBLE)
```

## Arguments

- y:

  `DOUBLE`

- x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    REGR_COUNT(y, x) * VAR_POP(y)
