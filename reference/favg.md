# DuckDB function favg

Calculates the average using a more accurate floating point summation
(Kahan Sum).

## Usage

``` r
favg(x = DOUBLE)
```

## Arguments

- x:

  `DOUBLE`

## Value

`DOUBLE`

## SQL examples

    favg(A)
