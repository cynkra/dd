# DuckDB function variant_extract

- `variant_extract(input_variant = VARIANT, field = VARCHAR)`: Returns
  the `field` from the `input_variant` if it's an OBJECT.

- `variant_extract(input_variant = VARIANT, index = UINTEGER)`: Returns
  the entry at `index` from the `input_variant` if it's an ARRAY.

## Usage

``` r
variant_extract(input_variant, field)
```

## Arguments

- input_variant:

  `VARIANT`

- field:

  `VARCHAR`

## Value

`VARIANT`

## Overloads

- `variant_extract(input_variant = VARIANT, field = VARCHAR)`

- `variant_extract(input_variant = VARIANT, index = UINTEGER)`

## SQL examples

    variant_extract({'a': 42, 'b': [1,2,3])::VARIANT, 'b')
    variant_extract([1,2,3])::VARIANT, 0)

## See also

Other variant:
[`variant_normalize()`](https://cynkra.github.io/dd/reference/variant_normalize.md),
[`variant_typeof()`](https://cynkra.github.io/dd/reference/variant_typeof.md)
