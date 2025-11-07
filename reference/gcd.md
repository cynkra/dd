# DuckDB function gcd

Computes the greatest common divisor of x and y.

## Arguments

- x:

  `BIGINT | HUGEINT`

- y:

  `BIGINT | HUGEINT`

## Value

`BIGINT | HUGEINT`

## Overloads

- `gcd(x = BIGINT, y = BIGINT)`

- `gcd(x = HUGEINT, y = HUGEINT)`

## SQL examples

    gcd(42, 57)
