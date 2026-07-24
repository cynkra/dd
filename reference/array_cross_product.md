# DuckDB function array_cross_product

Computes the cross product of two arrays of size 3. The array elements
can not be `NULL`.

## Usage

``` r
array_cross_product(array, array.1)
```

## Arguments

- array, array.1:

  `FLOAT[3] | DOUBLE[3]`

## Value

`FLOAT[3] | DOUBLE[3]`

## SQL examples

    array_cross_product(array_value(1.0::FLOAT, 2.0::FLOAT, 3.0::FLOAT), array_value(2.0::FLOAT, 3.0::FLOAT, 4.0::FLOAT))

## See also

Other array:
[`array_cosine_distance()`](https://cynkra.github.io/dd/reference/array_cosine_distance.md),
[`array_cosine_similarity()`](https://cynkra.github.io/dd/reference/array_cosine_similarity.md),
[`array_distance()`](https://cynkra.github.io/dd/reference/array_distance.md),
[`array_inner_product()`](https://cynkra.github.io/dd/reference/array_inner_product.md),
[`array_negative_inner_product()`](https://cynkra.github.io/dd/reference/array_negative_inner_product.md),
[`array_value()`](https://cynkra.github.io/dd/reference/array_value.md)
