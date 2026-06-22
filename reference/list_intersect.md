# DuckDB function list_intersect

Returns a list containing the distinct elements that are present in both
`list1` and `list2`.

## Usage

``` r
list_intersect(list1 = `T[]`, list2 = `T[]`)
```

## Arguments

- list1:

  `T[]`

- list2:

  `T[]`

## Value

`T[]`

## SQL examples

    list_intersect([1, 2, 3], [2, 3, 4])
