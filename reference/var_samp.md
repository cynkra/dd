# DuckDB function var_samp

Returns the sample variance of all input values.

## Usage

``` r
var_samp(x = DOUBLE)
```

## Arguments

- x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    (SUM(x^2) - SUM(x)^2 / COUNT(x)) / (COUNT(x) - 1)
