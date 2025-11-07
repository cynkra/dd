# DuckDB function list_where

Returns a list with the `BOOLEAN`s in `mask_list` applied as a mask to
the `value_list`.

## Usage

``` r
list_where(value_list = `T[]`, mask_list = `BOOLEAN[]`)
```

## Arguments

- value_list:

  `T[]`

- mask_list:

  `BOOLEAN[]`

## Value

`T[]`

## SQL examples

    list_where([10, 20, 30, 40], [true, false, false, true])
