# DuckDB function array_select

Returns a list based on the elements selected by the `index_list`.

## Usage

``` r
array_select(value_list = `T[]`, index_list = `BIGINT[]`)
```

## Arguments

- value_list:

  `T[]`

- index_list:

  `BIGINT[]`

## Value

`T[]`

## SQL examples

    array_select([10, 20, 30, 40], [1, 4])
