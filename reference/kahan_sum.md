# DuckDB function kahan_sum

Calculates the sum using a more accurate floating point summation (Kahan
Sum).

## Usage

``` r
kahan_sum(arg = DOUBLE)
```

## Arguments

- arg:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    kahan_sum(A)
