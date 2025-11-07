# DuckDB function array_aggr

Executes the aggregate function `function_name` on the elements of
`list`.

## Usage

``` r
array_aggr(list = `ANY[]`, function_name = VARCHAR)
```

## Arguments

- list:

  `ANY[]`

- function_name:

  `VARCHAR`

## Value

`ANY`

## SQL examples

    array_aggr([1, 2, NULL], 'min')
