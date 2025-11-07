# DuckDB function array_cosine_similarity

Computes the cosine similarity between two arrays of the same size. The
array elements can not be `NULL`. The arrays can have any size as long
as the size is the same for both arguments.

## Arguments

- array1:

  `FLOAT[ANY] | DOUBLE[ANY]`

- array2:

  `FLOAT[ANY] | DOUBLE[ANY]`

## Value

`FLOAT | DOUBLE`

## Overloads

- `` array_cosine_similarity(array1 = `FLOAT[ANY]`, array2 = `FLOAT[ANY]`) ``

- `` array_cosine_similarity(array1 = `DOUBLE[ANY]`, array2 = `DOUBLE[ANY]`) ``

## SQL examples

    array_cosine_similarity(array_value(1.0::FLOAT, 2.0::FLOAT, 3.0::FLOAT), array_value(2.0::FLOAT, 3.0::FLOAT, 4.0::FLOAT))
