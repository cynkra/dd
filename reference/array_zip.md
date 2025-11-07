# DuckDB function array_zip

Zips n `LIST`s to a new `LIST` whose length will be that of the longest
list. Its elements are structs of n elements from each list `list_1`, …,
`list_n`, missing elements are replaced with `NULL`. If `truncate` is
set, all lists are truncated to the smallest list length.

## Usage

``` r
array_zip()
```

## Value

`STRUCT[]`

## SQL examples

    array_zip([1, 2], [3, 4], [5, 6])
    array_zip([1, 2], [3, 4], [5, 6, 7])
    array_zip([1, 2], [3, 4], [5, 6, 7], true)
