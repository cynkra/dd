# DuckDB function variant_normalize

Normalizes the `input_variant` to a canonical representation.

## Usage

``` r
variant_normalize(input_variant = VARIANT)
```

## Arguments

- input_variant:

  `VARIANT`

## Value

`VARIANT`

## SQL examples

    variant_normalize({'b': [1,2,3], 'a': 42})::VARIANT)
