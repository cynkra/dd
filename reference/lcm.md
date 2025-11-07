# DuckDB function lcm

Computes the least common multiple of x and y.

## Arguments

- x:

  `BIGINT | HUGEINT`

- y:

  `BIGINT | HUGEINT`

## Value

`BIGINT | HUGEINT`

## Overloads

- `lcm(x = BIGINT, y = BIGINT)`

- `lcm(x = HUGEINT, y = HUGEINT)`

## SQL examples

    lcm(42, 57)
