# DuckDB function variant_typeof

Returns the internal type of the `input_variant`.

## Usage

``` r
variant_typeof(input_variant)
```

## Arguments

- input_variant:

  `VARIANT`

## Value

`VARCHAR`

## SQL examples

    variant_typeof({'a': 42, 'b': [1,2,3]})::VARIANT)

## See also

Other variant:
[`variant_extract()`](https://cynkra.github.io/dd/reference/variant_extract.md),
[`variant_normalize()`](https://cynkra.github.io/dd/reference/variant_normalize.md)
