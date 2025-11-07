# DuckDB function approx_count_distinct

Computes the approximate count of distinct elements using HyperLogLog.

## Usage

``` r
approx_count_distinct(any = ANY)
```

## Arguments

- any:

  `ANY`

## Value

`BIGINT`

## SQL examples

    approx_count_distinct(A)
