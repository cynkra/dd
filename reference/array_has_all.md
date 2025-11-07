# DuckDB function array_has_all

Returns true if all elements of list2 are in list1. NULLs are ignored.

## Usage

``` r
array_has_all(list1 = `T[]`, list2 = `T[]`)
```

## Arguments

- list1:

  `T[]`

- list2:

  `T[]`

## Value

`BOOLEAN`

## SQL examples

    array_has_all([1, 2, 3], [2, 3])
