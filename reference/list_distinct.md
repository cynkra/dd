# DuckDB function list_distinct

Removes all duplicates and `NULL` values from a list. Does not preserve
the original order.

## Usage

``` r
list_distinct(list = `T[]`)
```

## Arguments

- list:

  `T[]`

## Value

`T[]`

## SQL examples

    list_distinct([1, 1, NULL, -3, 1, 5])
