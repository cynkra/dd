# DuckDB function list_position

Returns the index of the `element` if the `list` contains the `element`.
If the `element` is not found, it returns `NULL`.

## Usage

``` r
list_position(list = `T[]`, element = T)
```

## Arguments

- list:

  `T[]`

- element:

  `T`

## Value

`INTEGER`

## SQL examples

    list_position([1, 2, NULL], 2)
