# DuckDB function sum_no_overflow

Internal only. Calculates the sum value for all tuples in arg without
overflow checks.

## Arguments

- arg:

  `INTEGER | BIGINT | DECIMAL`

## Value

`HUGEINT | DECIMAL`

## Overloads

- `sum_no_overflow(arg = INTEGER)`

- `sum_no_overflow(arg = BIGINT)`

- `sum_no_overflow(arg = DECIMAL)`

## SQL examples

    sum_no_overflow(A)
