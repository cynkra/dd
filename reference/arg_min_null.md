# DuckDB function arg_min_null

Finds the row with the minimum val. Calculates the arg expression at
that row.

## Arguments

- arg:

  `INTEGER | BIGINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | DECIMAL | ANY`

- val:

  `INTEGER | BIGINT | HUGEINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | ANY`

## Value

`INTEGER | BIGINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | DECIMAL | ANY`

## Overloads

- `arg_min_null(arg = INTEGER, val = INTEGER)`

- `arg_min_null(arg = INTEGER, val = BIGINT)`

- `arg_min_null(arg = INTEGER, val = HUGEINT)`

- `arg_min_null(arg = INTEGER, val = DOUBLE)`

- `arg_min_null(arg = INTEGER, val = VARCHAR)`

- `arg_min_null(arg = INTEGER, val = DATE)`

- `arg_min_null(arg = INTEGER, val = TIMESTAMP)`

- `` arg_min_null(arg = INTEGER, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = INTEGER, val = BLOB)`

- `arg_min_null(arg = BIGINT, val = INTEGER)`

- `arg_min_null(arg = BIGINT, val = BIGINT)`

- `arg_min_null(arg = BIGINT, val = HUGEINT)`

- `arg_min_null(arg = BIGINT, val = DOUBLE)`

- `arg_min_null(arg = BIGINT, val = VARCHAR)`

- `arg_min_null(arg = BIGINT, val = DATE)`

- `arg_min_null(arg = BIGINT, val = TIMESTAMP)`

- `` arg_min_null(arg = BIGINT, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = BIGINT, val = BLOB)`

- `arg_min_null(arg = DOUBLE, val = INTEGER)`

- `arg_min_null(arg = DOUBLE, val = BIGINT)`

- `arg_min_null(arg = DOUBLE, val = HUGEINT)`

- `arg_min_null(arg = DOUBLE, val = DOUBLE)`

- `arg_min_null(arg = DOUBLE, val = VARCHAR)`

- `arg_min_null(arg = DOUBLE, val = DATE)`

- `arg_min_null(arg = DOUBLE, val = TIMESTAMP)`

- `` arg_min_null(arg = DOUBLE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = DOUBLE, val = BLOB)`

- `arg_min_null(arg = VARCHAR, val = INTEGER)`

- `arg_min_null(arg = VARCHAR, val = BIGINT)`

- `arg_min_null(arg = VARCHAR, val = HUGEINT)`

- `arg_min_null(arg = VARCHAR, val = DOUBLE)`

- `arg_min_null(arg = VARCHAR, val = VARCHAR)`

- `arg_min_null(arg = VARCHAR, val = DATE)`

- `arg_min_null(arg = VARCHAR, val = TIMESTAMP)`

- `` arg_min_null(arg = VARCHAR, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = VARCHAR, val = BLOB)`

- `arg_min_null(arg = DATE, val = INTEGER)`

- `arg_min_null(arg = DATE, val = BIGINT)`

- `arg_min_null(arg = DATE, val = HUGEINT)`

- `arg_min_null(arg = DATE, val = DOUBLE)`

- `arg_min_null(arg = DATE, val = VARCHAR)`

- `arg_min_null(arg = DATE, val = DATE)`

- `arg_min_null(arg = DATE, val = TIMESTAMP)`

- `` arg_min_null(arg = DATE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = DATE, val = BLOB)`

- `arg_min_null(arg = TIMESTAMP, val = INTEGER)`

- `arg_min_null(arg = TIMESTAMP, val = BIGINT)`

- `arg_min_null(arg = TIMESTAMP, val = HUGEINT)`

- `arg_min_null(arg = TIMESTAMP, val = DOUBLE)`

- `arg_min_null(arg = TIMESTAMP, val = VARCHAR)`

- `arg_min_null(arg = TIMESTAMP, val = DATE)`

- `arg_min_null(arg = TIMESTAMP, val = TIMESTAMP)`

- `` arg_min_null(arg = TIMESTAMP, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = TIMESTAMP, val = BLOB)`

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = INTEGER) ``

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = BIGINT) ``

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = HUGEINT) ``

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = DOUBLE) ``

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = VARCHAR) ``

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = DATE) ``

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = TIMESTAMP) ``

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = `TIMESTAMP WITH TIME ZONE`) ``

- `` arg_min_null(arg = `TIMESTAMP WITH TIME ZONE`, val = BLOB) ``

- `arg_min_null(arg = BLOB, val = INTEGER)`

- `arg_min_null(arg = BLOB, val = BIGINT)`

- `arg_min_null(arg = BLOB, val = HUGEINT)`

- `arg_min_null(arg = BLOB, val = DOUBLE)`

- `arg_min_null(arg = BLOB, val = VARCHAR)`

- `arg_min_null(arg = BLOB, val = DATE)`

- `arg_min_null(arg = BLOB, val = TIMESTAMP)`

- `` arg_min_null(arg = BLOB, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = BLOB, val = BLOB)`

- `arg_min_null(arg = DECIMAL, val = INTEGER)`

- `arg_min_null(arg = DECIMAL, val = BIGINT)`

- `arg_min_null(arg = DECIMAL, val = HUGEINT)`

- `arg_min_null(arg = DECIMAL, val = DOUBLE)`

- `arg_min_null(arg = DECIMAL, val = VARCHAR)`

- `arg_min_null(arg = DECIMAL, val = DATE)`

- `arg_min_null(arg = DECIMAL, val = TIMESTAMP)`

- `` arg_min_null(arg = DECIMAL, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = DECIMAL, val = BLOB)`

- `arg_min_null(arg = ANY, val = INTEGER)`

- `arg_min_null(arg = ANY, val = BIGINT)`

- `arg_min_null(arg = ANY, val = HUGEINT)`

- `arg_min_null(arg = ANY, val = DOUBLE)`

- `arg_min_null(arg = ANY, val = VARCHAR)`

- `arg_min_null(arg = ANY, val = DATE)`

- `arg_min_null(arg = ANY, val = TIMESTAMP)`

- `` arg_min_null(arg = ANY, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min_null(arg = ANY, val = BLOB)`

- `arg_min_null(arg = ANY, val = ANY)`

## SQL examples

    arg_min_null(A, B)
