# DuckDB function fsum

Calculates the sum using a more accurate floating point summation (Kahan
Sum).

## Usage

``` r
fsum(arg = DOUBLE)
```

## Arguments

- arg:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    fsum(A)
