# DuckDB function hex

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

- `hex(string = VARCHAR)`

- `hex(value = BIGNUM)`

- `hex(blob = BLOB)`

- `hex(value = BIGINT)`

- `hex(value = UBIGINT)`

- `hex(value = HUGEINT)`

- `hex(value = UHUGEINT)`

## SQL examples

    hex('Hello')
    hex(42)
    hex('\xAA\xBB'::BLOB)
