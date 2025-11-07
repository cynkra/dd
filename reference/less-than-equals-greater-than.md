# DuckDB function \<=\>

Computes the cosine distance between two same-sized lists.

## Arguments

- list1:

  `FLOAT[] | DOUBLE[]`

- list2:

  `FLOAT[] | DOUBLE[]`

## Value

`FLOAT | DOUBLE`

## Overloads

- `` `<=>`(list1 = `FLOAT[]`, list2 = `FLOAT[]`) ``

- `` `<=>`(list1 = `DOUBLE[]`, list2 = `DOUBLE[]`) ``

## SQL examples

    list_cosine_distance([1, 2, 3], [1, 2, 3])
