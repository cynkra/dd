# DuckDB function array_cat

Concatenates lists. `NULL` inputs are skipped. See also operator `||`.

## Usage

``` r
array_cat()
```

## Value

`ANY[]`

## SQL examples

    array_cat([2, 3], [4, 5, 6], [7])
