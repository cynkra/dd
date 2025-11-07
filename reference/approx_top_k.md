# DuckDB function approx_top_k

Finds the k approximately most occurring values in the data set.

## Usage

``` r
approx_top_k(val = ANY, k = BIGINT)
```

## Arguments

- val:

  `ANY`

- k:

  `BIGINT`

## Value

`ANY[]`

## SQL examples

    approx_top_k(x, 5)
