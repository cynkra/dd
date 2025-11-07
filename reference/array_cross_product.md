# DuckDB function array_cross_product

Computes the cross product of two arrays of size 3. The array elements
can not be `NULL`.

## Arguments

- array:

  `FLOAT[3] | DOUBLE[3]`

## Value

`FLOAT[3] | DOUBLE[3]`

## Overloads

- `` array_cross_product(array = `FLOAT[3]`, array = `FLOAT[3]`) ``

- `` array_cross_product(array = `DOUBLE[3]`, array = `DOUBLE[3]`) ``

## SQL examples

    array_cross_product(array_value(1.0::FLOAT, 2.0::FLOAT, 3.0::FLOAT), array_value(2.0::FLOAT, 3.0::FLOAT, 4.0::FLOAT))
