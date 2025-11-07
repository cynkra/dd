# DuckDB function list_inner_product

Computes the inner product between two same-sized lists.

## Arguments

- list1:

  `FLOAT[] | DOUBLE[]`

- list2:

  `FLOAT[] | DOUBLE[]`

## Value

`FLOAT | DOUBLE`

## Overloads

- `` list_inner_product(list1 = `FLOAT[]`, list2 = `FLOAT[]`) ``

- `` list_inner_product(list1 = `DOUBLE[]`, list2 = `DOUBLE[]`) ``

## SQL examples

    list_inner_product([1, 2, 3], [1, 2, 3])
