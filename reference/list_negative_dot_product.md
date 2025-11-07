# DuckDB function list_negative_dot_product

Computes the negative inner product between two same-sized lists.

## Arguments

- list1:

  `FLOAT[] | DOUBLE[]`

- list2:

  `FLOAT[] | DOUBLE[]`

## Value

`FLOAT | DOUBLE`

## Overloads

- `` list_negative_dot_product(list1 = `FLOAT[]`, list2 = `FLOAT[]`) ``

- `` list_negative_dot_product(list1 = `DOUBLE[]`, list2 = `DOUBLE[]`) ``

## SQL examples

    list_negative_dot_product([1, 2, 3], [1, 2, 3])
