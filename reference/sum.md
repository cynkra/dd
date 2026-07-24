# DuckDB function sum

Calculates the sum value for all tuples in arg.

## Usage

``` r
sum(arg)
```

## Arguments

- arg:

  `DECIMAL | BOOLEAN | SMALLINT | INTEGER | BIGINT | HUGEINT | DOUBLE | BIGNUM`

## Value

`DECIMAL | HUGEINT | DOUBLE | BIGNUM`

## SQL examples

    sum(A)
