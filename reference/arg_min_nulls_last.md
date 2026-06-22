# DuckDB function arg_min_nulls_last

Finds the rows with N minimum vals, including nulls. Calculates the arg
expression at that row.

## Arguments

- arg:

  `INTEGER | BIGINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | DECIMAL | ANY`

- val:

  `INTEGER | BIGINT | HUGEINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | ANY`

- N:

  `BIGINT`

## Value

`INTEGER | BIGINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | DECIMAL | ANY | ANY[]`

## Overloads

- `arg_min_nulls_last(arg = INTEGER, val = INTEGER)`

- `arg_min_nulls_last(arg = INTEGER, val = BIGINT)`

- `arg_min_nulls_last(arg = INTEGER, val = HUGEINT)`

- `arg_min_nulls_last(arg = INTEGER, val = DOUBLE)`

- `arg_min_nulls_last(arg = INTEGER, val = VARCHAR)`

- `arg_min_nulls_last(arg = INTEGER, val = DATE)`

- `arg_min_nulls_last(arg = INTEGER, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = INTEGER, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = INTEGER, val = BLOB)`

- `arg_min_nulls_last(arg = BIGINT, val = INTEGER)`

- `arg_min_nulls_last(arg = BIGINT, val = BIGINT)`

- `arg_min_nulls_last(arg = BIGINT, val = HUGEINT)`

- `arg_min_nulls_last(arg = BIGINT, val = DOUBLE)`

- `arg_min_nulls_last(arg = BIGINT, val = VARCHAR)`

- `arg_min_nulls_last(arg = BIGINT, val = DATE)`

- `arg_min_nulls_last(arg = BIGINT, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = BIGINT, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = BIGINT, val = BLOB)`

- `arg_min_nulls_last(arg = DOUBLE, val = INTEGER)`

- `arg_min_nulls_last(arg = DOUBLE, val = BIGINT)`

- `arg_min_nulls_last(arg = DOUBLE, val = HUGEINT)`

- `arg_min_nulls_last(arg = DOUBLE, val = DOUBLE)`

- `arg_min_nulls_last(arg = DOUBLE, val = VARCHAR)`

- `arg_min_nulls_last(arg = DOUBLE, val = DATE)`

- `arg_min_nulls_last(arg = DOUBLE, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = DOUBLE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = DOUBLE, val = BLOB)`

- `arg_min_nulls_last(arg = VARCHAR, val = INTEGER)`

- `arg_min_nulls_last(arg = VARCHAR, val = BIGINT)`

- `arg_min_nulls_last(arg = VARCHAR, val = HUGEINT)`

- `arg_min_nulls_last(arg = VARCHAR, val = DOUBLE)`

- `arg_min_nulls_last(arg = VARCHAR, val = VARCHAR)`

- `arg_min_nulls_last(arg = VARCHAR, val = DATE)`

- `arg_min_nulls_last(arg = VARCHAR, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = VARCHAR, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = VARCHAR, val = BLOB)`

- `arg_min_nulls_last(arg = DATE, val = INTEGER)`

- `arg_min_nulls_last(arg = DATE, val = BIGINT)`

- `arg_min_nulls_last(arg = DATE, val = HUGEINT)`

- `arg_min_nulls_last(arg = DATE, val = DOUBLE)`

- `arg_min_nulls_last(arg = DATE, val = VARCHAR)`

- `arg_min_nulls_last(arg = DATE, val = DATE)`

- `arg_min_nulls_last(arg = DATE, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = DATE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = DATE, val = BLOB)`

- `arg_min_nulls_last(arg = TIMESTAMP, val = INTEGER)`

- `arg_min_nulls_last(arg = TIMESTAMP, val = BIGINT)`

- `arg_min_nulls_last(arg = TIMESTAMP, val = HUGEINT)`

- `arg_min_nulls_last(arg = TIMESTAMP, val = DOUBLE)`

- `arg_min_nulls_last(arg = TIMESTAMP, val = VARCHAR)`

- `arg_min_nulls_last(arg = TIMESTAMP, val = DATE)`

- `arg_min_nulls_last(arg = TIMESTAMP, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = TIMESTAMP, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = TIMESTAMP, val = BLOB)`

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = INTEGER) ``

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = BIGINT) ``

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = HUGEINT) ``

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = DOUBLE) ``

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = VARCHAR) ``

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = DATE) ``

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = TIMESTAMP) ``

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = `TIMESTAMP WITH TIME ZONE`) ``

- `` arg_min_nulls_last(arg = `TIMESTAMP WITH TIME ZONE`, val = BLOB) ``

- `arg_min_nulls_last(arg = BLOB, val = INTEGER)`

- `arg_min_nulls_last(arg = BLOB, val = BIGINT)`

- `arg_min_nulls_last(arg = BLOB, val = HUGEINT)`

- `arg_min_nulls_last(arg = BLOB, val = DOUBLE)`

- `arg_min_nulls_last(arg = BLOB, val = VARCHAR)`

- `arg_min_nulls_last(arg = BLOB, val = DATE)`

- `arg_min_nulls_last(arg = BLOB, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = BLOB, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = BLOB, val = BLOB)`

- `arg_min_nulls_last(arg = DECIMAL, val = INTEGER)`

- `arg_min_nulls_last(arg = DECIMAL, val = BIGINT)`

- `arg_min_nulls_last(arg = DECIMAL, val = HUGEINT)`

- `arg_min_nulls_last(arg = DECIMAL, val = DOUBLE)`

- `arg_min_nulls_last(arg = DECIMAL, val = VARCHAR)`

- `arg_min_nulls_last(arg = DECIMAL, val = DATE)`

- `arg_min_nulls_last(arg = DECIMAL, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = DECIMAL, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = DECIMAL, val = BLOB)`

- `arg_min_nulls_last(arg = ANY, val = INTEGER)`

- `arg_min_nulls_last(arg = ANY, val = BIGINT)`

- `arg_min_nulls_last(arg = ANY, val = HUGEINT)`

- `arg_min_nulls_last(arg = ANY, val = DOUBLE)`

- `arg_min_nulls_last(arg = ANY, val = VARCHAR)`

- `arg_min_nulls_last(arg = ANY, val = DATE)`

- `arg_min_nulls_last(arg = ANY, val = TIMESTAMP)`

- `` arg_min_nulls_last(arg = ANY, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_nulls_last(arg = ANY, val = BLOB)`

- `arg_min_nulls_last(arg = ANY, val = ANY)`

- `arg_min_nulls_last(arg = ANY, val = ANY, N = BIGINT)`

## SQL examples

    arg_min_null_val(A, B, N)
