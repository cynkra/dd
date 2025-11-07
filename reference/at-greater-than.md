# DuckDB function @\>

Returns true if all elements of list2 are in list1. NULLs are ignored.

## Usage

``` r
`@>`(list1 = `T[]`, list2 = `T[]`)
```

## Arguments

- list1:

  `T[]`

- list2:

  `T[]`

## Value

`BOOLEAN`

## SQL examples

    list_has_all([1, 2, 3], [2, 3])
