# DuckDB function list_cat

Concatenates lists. `NULL` inputs are skipped. See also operator `||`.

## Usage

``` r
list_cat()
```

## Value

`ANY[]`

## SQL examples

    list_cat([2, 3], [4, 5, 6], [7])
