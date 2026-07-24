# DuckDB function arg_min_null

Finds the row with the minimum val. Calculates the arg expression at
that row.

## Usage

``` r
arg_min_null(arg, val)
```

## Arguments

- arg:

  `INTEGER | BIGINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | DECIMAL | ANY`

- val:

  `INTEGER | BIGINT | HUGEINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | ANY`

## Value

`INTEGER | BIGINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | DECIMAL | ANY`

## SQL examples

    arg_min_null(A, B)
