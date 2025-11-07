# DuckDB function array_transform

Returns a list that is the result of applying the `lambda` function to
each element of the input `list`. The return type is defined by the
return type of the `lambda` function.

## Usage

``` r
array_transform(list = `ANY[]`, `lambda(x)` = LAMBDA)
```

## Arguments

- list:

  `ANY[]`

- lambda(x):

  `LAMBDA`

## Value

`ANY[]`

## SQL examples

    array_transform([1, 2, 3], lambda x : x + 1)
