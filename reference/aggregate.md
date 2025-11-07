# DuckDB function aggregate

Executes the aggregate function `function_name` on the elements of
`list`.

## Usage

``` r
aggregate(list = `ANY[]`, function_name = VARCHAR)
```

## Arguments

- list:

  `ANY[]`

- function_name:

  `VARCHAR`

## Value

`ANY`

## SQL examples

    aggregate([1, 2, NULL], 'min')
