# DuckDB function list_sort

Sorts the elements of the list.

## Arguments

- list:

  `ANY[]`

- col1:

  `VARCHAR`

- col2:

  `VARCHAR`

## Value

`ANY[]`

## Overloads

- `` list_sort(list = `ANY[]`) ``

- `` list_sort(list = `ANY[]`, col1 = VARCHAR) ``

- `` list_sort(list = `ANY[]`, col1 = VARCHAR, col2 = VARCHAR) ``

## SQL examples

    list_sort([3, 6, 1, 2])
