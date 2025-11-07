# DuckDB function variant_typeof

Returns the internal type of the `input_variant`.

## Usage

``` r
variant_typeof(input_variant = VARIANT)
```

## Arguments

- input_variant:

  `VARIANT`

## Value

`VARCHAR`

## SQL examples

    variant_typeof({'a': 42, 'b': [1,2,3]})::VARIANT)
