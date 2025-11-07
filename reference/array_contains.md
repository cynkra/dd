# DuckDB function array_contains

Returns true if the list contains the element.

## Usage

``` r
array_contains(list = `T[]`, element = T)
```

## Arguments

- list:

  `T[]`

- element:

  `T`

## Value

`BOOLEAN`

## SQL examples

    array_contains([1, 2, NULL], 1)
