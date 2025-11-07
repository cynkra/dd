# DuckDB function list_contains

Returns true if the list contains the element.

## Usage

``` r
list_contains(list = `T[]`, element = T)
```

## Arguments

- list:

  `T[]`

- element:

  `T`

## Value

`BOOLEAN`

## SQL examples

    list_contains([1, 2, NULL], 1)
