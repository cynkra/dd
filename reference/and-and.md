# DuckDB function &&

Returns true if the lists have any element in common. NULLs are ignored.

## Usage

``` r
`T[]` && `T[]`
```

## Arguments

- list1:

  `T[]`

- list2:

  `T[]`

## Value

`BOOLEAN`

## SQL examples

    list_has_any([1, 2, 3], [2, 3, 4])
