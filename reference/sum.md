# DuckDB function sum

Calculates the sum value for all tuples in arg.

## Arguments

- arg:

  `DECIMAL | BOOLEAN | SMALLINT | INTEGER | BIGINT | HUGEINT | DOUBLE | BIGNUM`

## Value

`DECIMAL | HUGEINT | DOUBLE | BIGNUM`

## Overloads

- `sum(arg = DECIMAL)`

- `sum(arg = BOOLEAN)`

- `sum(arg = SMALLINT)`

- `sum(arg = INTEGER)`

- `sum(arg = BIGINT)`

- `sum(arg = HUGEINT)`

- `sum(arg = DOUBLE)`

- `sum(arg = BIGNUM)`

## SQL examples

    sum(A)
