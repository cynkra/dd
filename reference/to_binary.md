# DuckDB function to_binary

Converts the `string` to binary representation.

Converts the `value` to binary representation.

## Arguments

- string:

  `VARCHAR`

- value:

  `BIGNUM | UBIGINT | BIGINT | HUGEINT | UHUGEINT`

## Value

`VARCHAR`

## Overloads

- `to_binary(string = VARCHAR)`

- `to_binary(value = BIGNUM)`

- `to_binary(value = UBIGINT)`

- `to_binary(value = BIGINT)`

- `to_binary(value = HUGEINT)`

- `to_binary(value = UHUGEINT)`

## SQL examples

    to_binary('Aa')
    to_binary(42)
