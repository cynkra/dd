# DuckDB function to_hex

Converts the `string` to hexadecimal representation.

Converts the `value` to `VARCHAR` using hexadecimal representation.

Converts `blob` to `VARCHAR` using hexadecimal encoding.

## Arguments

- string:

  `VARCHAR`

- value:

  `BIGNUM | BIGINT | UBIGINT | HUGEINT | UHUGEINT`

- blob:

  `BLOB`

## Value

`VARCHAR`

## Overloads

- `to_hex(string = VARCHAR)`

- `to_hex(value = BIGNUM)`

- `to_hex(blob = BLOB)`

- `to_hex(value = BIGINT)`

- `to_hex(value = UBIGINT)`

- `to_hex(value = HUGEINT)`

- `to_hex(value = UHUGEINT)`

## SQL examples

    to_hex('Hello')
    to_hex(42)
    to_hex('\xAA\xBB'::BLOB)
