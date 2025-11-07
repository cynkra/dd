# DuckDB function list_aggr

Executes the aggregate function `function_name` on the elements of
`list`.

## Usage

``` r
list_aggr(list = `ANY[]`, function_name = VARCHAR)
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
