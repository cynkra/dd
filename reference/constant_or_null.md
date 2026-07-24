# DuckDB function constant_or_null

If arg2 is NULL, return NULL. Otherwise, return arg1.

## Usage

``` r
constant_or_null(arg1, arg2)
```

## Arguments

- arg1, arg2:

  `ANY`

## Value

`ANY`

## SQL examples

    constant_or_null(42, NULL)
