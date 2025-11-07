# DuckDB function is_histogram_other_bin

Whether or not the provided value is the histogram "other" bin (used for
values not belonging to any provided bin).

## Usage

``` r
is_histogram_other_bin(val = ANY)
```

## Arguments

- val:

  `ANY`

## Value

`BOOLEAN`

## SQL examples

    is_histogram_other_bin(v)
