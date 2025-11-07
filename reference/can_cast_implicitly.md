# DuckDB function can_cast_implicitly

Whether or not we can implicitly cast from the source type to the other
type.

## Usage

``` r
can_cast_implicitly(source_type = ANY, target_type = ANY)
```

## Arguments

- source_type:

  `ANY`

- target_type:

  `ANY`

## Value

`BOOLEAN`

## SQL examples

    can_cast_implicitly(NULL::INTEGER, NULL::BIGINT)
