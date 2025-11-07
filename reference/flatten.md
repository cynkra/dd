# DuckDB function flatten

Flattens a nested list by one level.

## Usage

``` r
flatten(nested_list = `T[][]`)
```

## Arguments

- nested_list:

  `T[][]`

## Value

`T[]`

## SQL examples

    flatten([[1, 2, 3], [4, 5]])
