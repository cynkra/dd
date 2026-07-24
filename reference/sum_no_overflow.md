# DuckDB function sum_no_overflow

Internal only. Calculates the sum value for all tuples in arg without
overflow checks.

## Usage

``` r
sum_no_overflow(arg)
```

## Arguments

- arg:

  `INTEGER | BIGINT | DECIMAL`

## Value

`HUGEINT | DECIMAL`

## SQL examples

    sum_no_overflow(A)
