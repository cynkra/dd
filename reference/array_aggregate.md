# DuckDB function array_aggregate

Executes the aggregate function `function_name` on the elements of
`list`.

## Usage

``` r
array_aggregate(list = `ANY[]`, function_name = VARCHAR)
```

## Arguments

- list:

  `ANY[]`

- function_name:

  `VARCHAR`

## Value

`ANY`

## SQL examples

    array_aggregate([1, 2, NULL], 'min')
