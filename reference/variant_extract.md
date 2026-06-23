# DuckDB function variant_extract

Returns the `field` from the `input_variant` if it's an OBJECT.

Returns the entry at `index` from the `input_variant` if it's an ARRAY.

## Arguments

- col0:

  `VARIANT`

- col1:

  `VARCHAR | UINTEGER`

## Value

`VARIANT`

## Overloads

- `variant_extract(col0 = VARIANT, col1 = VARCHAR)`

- `variant_extract(col0 = VARIANT, col1 = UINTEGER)`

## SQL examples

    variant_extract({'a': 42, 'b': [1,2,3])::VARIANT, 'b')
    variant_extract([1,2,3])::VARIANT, 0)

## See also

Other variant:
[`variant_normalize()`](https://cynkra.github.io/dd/reference/variant_normalize.md),
[`variant_typeof()`](https://cynkra.github.io/dd/reference/variant_typeof.md)
