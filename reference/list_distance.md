# DuckDB function list_distance

Calculates the Euclidean distance between two points with coordinates
given in two inputs lists of equal length.

## Arguments

- list1:

  `FLOAT[] | DOUBLE[]`

- list2:

  `FLOAT[] | DOUBLE[]`

## Value

`FLOAT | DOUBLE`

## Overloads

- `` list_distance(list1 = `FLOAT[]`, list2 = `FLOAT[]`) ``

- `` list_distance(list1 = `DOUBLE[]`, list2 = `DOUBLE[]`) ``

## SQL examples

    list_distance([1, 2, 3], [1, 2, 5])
