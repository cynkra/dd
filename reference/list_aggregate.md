# DuckDB function list_aggregate

Executes the aggregate function `function_name` on the elements of
`list`.

## Usage

``` r
list_aggregate(list = `ANY[]`, function_name = VARCHAR)
```

## Arguments

- list:

  `ANY[]`

- function_name:

  `VARCHAR`

## Value

`ANY`

## SQL examples

    list_aggregate([1, 2, NULL], 'min')
