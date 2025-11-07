# DuckDB function list_concat

Concatenates lists. `NULL` inputs are skipped. See also operator `||`.

## Usage

``` r
list_concat()
```

## Value

`ANY[]`

## SQL examples

    list_concat([2, 3], [4, 5, 6], [7])
