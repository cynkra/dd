# DuckDB function list_grade_up

Works like list_sort, but the results are the indexes that correspond to
the position in the original list instead of the actual values.

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

- `` list_grade_up(list = `ANY[]`) ``

- `` list_grade_up(list = `ANY[]`, col1 = VARCHAR) ``

- `` list_grade_up(list = `ANY[]`, col1 = VARCHAR, col2 = VARCHAR) ``

## SQL examples

    list_grade_up([3, 6, 1, 2])
