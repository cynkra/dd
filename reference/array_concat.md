# DuckDB function array_concat

Concatenates lists. `NULL` inputs are skipped. See also operator `||`.

## Usage

``` r
array_concat()
```

## Value

`ANY[]`

## SQL examples

    array_concat([2, 3], [4, 5, 6], [7])
