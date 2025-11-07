# DuckDB function array_filter

Constructs a list from those elements of the input `list` for which the
`lambda` function returns `true`. DuckDB must be able to cast the
`lambda` function's return type to `BOOL`. The return type of
`list_filter` is the same as the input list's.

## Usage

``` r
array_filter(list = `ANY[]`, `lambda(x)` = LAMBDA)
```

## Arguments

- list:

  `ANY[]`

- lambda(x):

  `LAMBDA`

## Value

`ANY[]`

## SQL examples

    array_filter([3, 4, 5], lambda x : x > 4)
