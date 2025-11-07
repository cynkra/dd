# DuckDB function bit_count

Returns the number of bits that are set.

## Arguments

- x:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | BIT`

## Value

`TINYINT | BIGINT`

## Overloads

- `bit_count(x = TINYINT)`

- `bit_count(x = SMALLINT)`

- `bit_count(x = INTEGER)`

- `bit_count(x = BIGINT)`

- `bit_count(x = HUGEINT)`

- `bit_count(x = BIT)`

## SQL examples

    bit_count(31)
