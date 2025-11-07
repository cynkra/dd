# DuckDB function list_has

Returns true if the list contains the element.

## Usage

``` r
list_has(list = `T[]`, element = T)
```

## Arguments

- list:

  `T[]`

- element:

  `T`

## Value

`BOOLEAN`

## SQL examples

    list_has([1, 2, NULL], 1)
