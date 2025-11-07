# DuckDB function array_has_any

Returns true if the lists have any element in common. NULLs are ignored.

## Usage

``` r
array_has_any(list1 = `T[]`, list2 = `T[]`)
```

## Arguments

- list1:

  `T[]`

- list2:

  `T[]`

## Value

`BOOLEAN`

## SQL examples

    array_has_any([1, 2, 3], [2, 3, 4])
