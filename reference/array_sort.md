# DuckDB function array_sort

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

- `` array_sort(list = `ANY[]`) ``

- `` array_sort(list = `ANY[]`, col1 = VARCHAR) ``

- `` array_sort(list = `ANY[]`, col1 = VARCHAR, col2 = VARCHAR) ``

## SQL examples

    array_sort([3, 6, 1, 2])
