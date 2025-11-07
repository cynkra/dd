# DuckDB function array_reverse_sort

Sorts the elements of the list in reverse order.

## Arguments

- list:

  `ANY[]`

- col1:

  `VARCHAR`

## Value

`ANY[]`

## Overloads

- `` array_reverse_sort(list = `ANY[]`) ``

- `` array_reverse_sort(list = `ANY[]`, col1 = VARCHAR) ``

## SQL examples

    array_reverse_sort([3, 6, 1, 2])
