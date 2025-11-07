# DuckDB function array_indexof

Returns the index of the `element` if the `list` contains the `element`.
If the `element` is not found, it returns `NULL`.

## Usage

``` r
array_indexof(list = `T[]`, element = T)
```

## Arguments

- list:

  `T[]`

- element:

  `T`

## Value

`INTEGER`

## SQL examples

    array_indexof([1, 2, NULL], 2)
