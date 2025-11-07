# DuckDB function bit_length

Number of bits in a `string`.

Returns the bit-length of the `bit` argument.

## Arguments

- string:

  `VARCHAR`

- bit:

  `BIT`

## Value

`BIGINT`

## Overloads

- `bit_length(string = VARCHAR)`

- `bit_length(bit = BIT)`

## SQL examples

    bit_length('abc')
    bit_length(42::TINYINT::BIT)
