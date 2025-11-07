# DuckDB function list_cosine_distance

Computes the cosine distance between two same-sized lists.

## Arguments

- list1:

  `FLOAT[] | DOUBLE[]`

- list2:

  `FLOAT[] | DOUBLE[]`

## Value

`FLOAT | DOUBLE`

## Overloads

- `` list_cosine_distance(list1 = `FLOAT[]`, list2 = `FLOAT[]`) ``

- `` list_cosine_distance(list1 = `DOUBLE[]`, list2 = `DOUBLE[]`) ``

## SQL examples

    list_cosine_distance([1, 2, 3], [1, 2, 3])
