# DuckDB function array_grade_up

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

- `` array_grade_up(list = `ANY[]`) ``

- `` array_grade_up(list = `ANY[]`, col1 = VARCHAR) ``

- `` array_grade_up(list = `ANY[]`, col1 = VARCHAR, col2 = VARCHAR) ``

## SQL examples

    array_grade_up([3, 6, 1, 2])
