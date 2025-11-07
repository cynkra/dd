# DuckDB function cast_to_type

Casts the first argument to the type of the second argument.

## Usage

``` r
cast_to_type(param = ANY, type = ANY)
```

## Arguments

- param:

  `ANY`

- type:

  `ANY`

## Value

`ANY`

## SQL examples

    cast_to_type('42', NULL::INTEGER)
