# DuckDB function greatest_common_divisor

Computes the greatest common divisor of x and y.

## Arguments

- x:

  `BIGINT | HUGEINT`

- y:

  `BIGINT | HUGEINT`

## Value

`BIGINT | HUGEINT`

## Overloads

- `greatest_common_divisor(x = BIGINT, y = BIGINT)`

- `greatest_common_divisor(x = HUGEINT, y = HUGEINT)`

## SQL examples

    greatest_common_divisor(42, 57)
