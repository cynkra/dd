# DuckDB function to_base

Converts `number` to a string in the given base `radix`, optionally
padding with leading zeros to `min_length`.

## Arguments

- number:

  `BIGINT`

- radix:

  `INTEGER`

- min_length:

  `INTEGER`

## Value

`VARCHAR`

## Overloads

- `to_base(number = BIGINT, radix = INTEGER)`

- `to_base(number = BIGINT, radix = INTEGER, min_length = INTEGER)`

## SQL examples

    to_base(42, 16, 5)
