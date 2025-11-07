# DuckDB function bitstring

Pads the bitstring until the specified length.

## Arguments

- bitstring:

  `VARCHAR | BIT`

- length:

  `INTEGER`

## Value

`BIT`

## Overloads

- `bitstring(bitstring = VARCHAR, length = INTEGER)`

- `bitstring(bitstring = BIT, length = INTEGER)`

## SQL examples

    bitstring('1010'::BIT, 7)
