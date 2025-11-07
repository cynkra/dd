# DuckDB function list_element

Extract the `index`th (1-based) value from the list.

## Arguments

- list:

  `T[] | VARCHAR`

- index:

  `BIGINT`

## Value

`T | VARCHAR`

## Overloads

- `` list_element(list = `T[]`, index = BIGINT) ``

- `list_element(list = VARCHAR, index = BIGINT)`

## SQL examples

    list_element([4, 5, 6], 3)
