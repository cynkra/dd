# DuckDB function can_cast_implicitly

Whether or not we can implicitly cast from the source type to the other
type.

## Usage

``` r
can_cast_implicitly(source_type, target_type)
```

## Arguments

- source_type, target_type:

  `ANY`

## Value

`BOOLEAN`

## SQL examples

    can_cast_implicitly(NULL::INTEGER, NULL::BIGINT)
