# DuckDB function arg_max

Finds the row with the maximum val. Calculates the non-NULL arg
expression at that row.

## Arguments

- arg:

  `INTEGER | BIGINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | DECIMAL | ANY`

- val:

  `INTEGER | BIGINT | HUGEINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | ANY`

- col2:

  `BIGINT`

## Value

`INTEGER | BIGINT | DOUBLE | VARCHAR | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | BLOB | DECIMAL | ANY | ANY[]`

## Overloads

- `arg_max(arg = INTEGER, val = INTEGER)`

- `arg_max(arg = INTEGER, val = BIGINT)`

- `arg_max(arg = INTEGER, val = HUGEINT)`

- `arg_max(arg = INTEGER, val = DOUBLE)`

- `arg_max(arg = INTEGER, val = VARCHAR)`

- `arg_max(arg = INTEGER, val = DATE)`

- `arg_max(arg = INTEGER, val = TIMESTAMP)`

- `` arg_max(arg = INTEGER, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = INTEGER, val = BLOB)`

- `arg_max(arg = BIGINT, val = INTEGER)`

- `arg_max(arg = BIGINT, val = BIGINT)`

- `arg_max(arg = BIGINT, val = HUGEINT)`

- `arg_max(arg = BIGINT, val = DOUBLE)`

- `arg_max(arg = BIGINT, val = VARCHAR)`

- `arg_max(arg = BIGINT, val = DATE)`

- `arg_max(arg = BIGINT, val = TIMESTAMP)`

- `` arg_max(arg = BIGINT, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = BIGINT, val = BLOB)`

- `arg_max(arg = DOUBLE, val = INTEGER)`

- `arg_max(arg = DOUBLE, val = BIGINT)`

- `arg_max(arg = DOUBLE, val = HUGEINT)`

- `arg_max(arg = DOUBLE, val = DOUBLE)`

- `arg_max(arg = DOUBLE, val = VARCHAR)`

- `arg_max(arg = DOUBLE, val = DATE)`

- `arg_max(arg = DOUBLE, val = TIMESTAMP)`

- `` arg_max(arg = DOUBLE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = DOUBLE, val = BLOB)`

- `arg_max(arg = VARCHAR, val = INTEGER)`

- `arg_max(arg = VARCHAR, val = BIGINT)`

- `arg_max(arg = VARCHAR, val = HUGEINT)`

- `arg_max(arg = VARCHAR, val = DOUBLE)`

- `arg_max(arg = VARCHAR, val = VARCHAR)`

- `arg_max(arg = VARCHAR, val = DATE)`

- `arg_max(arg = VARCHAR, val = TIMESTAMP)`

- `` arg_max(arg = VARCHAR, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = VARCHAR, val = BLOB)`

- `arg_max(arg = DATE, val = INTEGER)`

- `arg_max(arg = DATE, val = BIGINT)`

- `arg_max(arg = DATE, val = HUGEINT)`

- `arg_max(arg = DATE, val = DOUBLE)`

- `arg_max(arg = DATE, val = VARCHAR)`

- `arg_max(arg = DATE, val = DATE)`

- `arg_max(arg = DATE, val = TIMESTAMP)`

- `` arg_max(arg = DATE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = DATE, val = BLOB)`

- `arg_max(arg = TIMESTAMP, val = INTEGER)`

- `arg_max(arg = TIMESTAMP, val = BIGINT)`

- `arg_max(arg = TIMESTAMP, val = HUGEINT)`

- `arg_max(arg = TIMESTAMP, val = DOUBLE)`

- `arg_max(arg = TIMESTAMP, val = VARCHAR)`

- `arg_max(arg = TIMESTAMP, val = DATE)`

- `arg_max(arg = TIMESTAMP, val = TIMESTAMP)`

- `` arg_max(arg = TIMESTAMP, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = TIMESTAMP, val = BLOB)`

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = INTEGER) ``

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = BIGINT) ``

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = HUGEINT) ``

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = DOUBLE) ``

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = VARCHAR) ``

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = DATE) ``

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = TIMESTAMP) ``

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = `TIMESTAMP WITH TIME ZONE`) ``

- `` arg_max(arg = `TIMESTAMP WITH TIME ZONE`, val = BLOB) ``

- `arg_max(arg = BLOB, val = INTEGER)`

- `arg_max(arg = BLOB, val = BIGINT)`

- `arg_max(arg = BLOB, val = HUGEINT)`

- `arg_max(arg = BLOB, val = DOUBLE)`

- `arg_max(arg = BLOB, val = VARCHAR)`

- `arg_max(arg = BLOB, val = DATE)`

- `arg_max(arg = BLOB, val = TIMESTAMP)`

- `` arg_max(arg = BLOB, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = BLOB, val = BLOB)`

- `arg_max(arg = DECIMAL, val = INTEGER)`

- `arg_max(arg = DECIMAL, val = BIGINT)`

- `arg_max(arg = DECIMAL, val = HUGEINT)`

- `arg_max(arg = DECIMAL, val = DOUBLE)`

- `arg_max(arg = DECIMAL, val = VARCHAR)`

- `arg_max(arg = DECIMAL, val = DATE)`

- `arg_max(arg = DECIMAL, val = TIMESTAMP)`

- `` arg_max(arg = DECIMAL, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = DECIMAL, val = BLOB)`

- `arg_max(arg = ANY, val = INTEGER)`

- `arg_max(arg = ANY, val = BIGINT)`

- `arg_max(arg = ANY, val = HUGEINT)`

- `arg_max(arg = ANY, val = DOUBLE)`

- `arg_max(arg = ANY, val = VARCHAR)`

- `arg_max(arg = ANY, val = DATE)`

- `arg_max(arg = ANY, val = TIMESTAMP)`

- `` arg_max(arg = ANY, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_max(arg = ANY, val = BLOB)`

- `arg_max(arg = ANY, val = ANY)`

- `arg_max(arg = ANY, val = ANY, col2 = BIGINT)`

## SQL examples

    arg_max(A, B)
