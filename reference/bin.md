# DuckDB function bin

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

- `bin(string = VARCHAR)`

- `bin(value = BIGNUM)`

- `bin(value = UBIGINT)`

- `bin(value = BIGINT)`

- `bin(value = HUGEINT)`

- `bin(value = UHUGEINT)`

## SQL examples

    bin('Aa')
    bin(42)
