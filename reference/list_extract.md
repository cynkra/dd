# DuckDB function list_extract

Extract the `index`th (1-based) value from the list.

## Arguments

- list:

  `T[] | VARCHAR`

- index:

  `BIGINT`

## Value

`T | VARCHAR`

## Overloads

- `` list_extract(list = `T[]`, index = BIGINT) ``

- `list_extract(list = VARCHAR, index = BIGINT)`

## SQL examples

    list_extract([4, 5, 6], 3)
