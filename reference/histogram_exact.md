# DuckDB function histogram_exact

Returns a LIST of STRUCTs with the fields bucket and count matching the
buckets exactly.

## Usage

``` r
histogram_exact(arg = ANY, bins = `ANY[]`)
```

## Arguments

- arg:

  `ANY`

- bins:

  `ANY[]`

## Value

`MAP`

## SQL examples

    histogram_exact(A, [0, 1, 2])
