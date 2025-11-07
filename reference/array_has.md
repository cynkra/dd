# DuckDB function array_has

Returns true if the list contains the element.

## Usage

``` r
array_has(list = `T[]`, element = T)
```

## Arguments

- list:

  `T[]`

- element:

  `T`

## Value

`BOOLEAN`

## SQL examples

    array_has([1, 2, NULL], 1)
