# DuckDB function list_reverse_sort

Sorts the elements of the list in reverse order.

## Arguments

- list:

  `ANY[]`

- col1:

  `VARCHAR`

## Value

`ANY[]`

## Overloads

- `` list_reverse_sort(list = `ANY[]`) ``

- `` list_reverse_sort(list = `ANY[]`, col1 = VARCHAR) ``

## SQL examples

    list_reverse_sort([3, 6, 1, 2])
