# DuckDB function array_cosine_distance

Computes the cosine distance between two arrays of the same size. The
array elements can not be `NULL`. The arrays can have any size as long
as the size is the same for both arguments.

## Usage

``` r
array_cosine_distance(array1, array2)
```

## Arguments

- array1, array2:

  `FLOAT[ANY] | DOUBLE[ANY]`

## Value

`FLOAT | DOUBLE`

## SQL examples

    array_cosine_distance(array_value(1.0::FLOAT, 2.0::FLOAT, 3.0::FLOAT), array_value(2.0::FLOAT, 3.0::FLOAT, 4.0::FLOAT))

## See also

Other array:
[`array_cosine_similarity()`](https://cynkra.github.io/dd/reference/array_cosine_similarity.md),
[`array_cross_product()`](https://cynkra.github.io/dd/reference/array_cross_product.md),
[`array_distance()`](https://cynkra.github.io/dd/reference/array_distance.md),
[`array_inner_product()`](https://cynkra.github.io/dd/reference/array_inner_product.md),
[`array_negative_inner_product()`](https://cynkra.github.io/dd/reference/array_negative_inner_product.md),
[`array_value()`](https://cynkra.github.io/dd/reference/array_value.md)
