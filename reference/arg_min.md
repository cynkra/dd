# DuckDB function arg_min

Finds the row with the minimum val. Calculates the non-NULL arg
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

- `arg_min(arg = INTEGER, val = INTEGER)`

- `arg_min(arg = INTEGER, val = BIGINT)`

- `arg_min(arg = INTEGER, val = HUGEINT)`

- `arg_min(arg = INTEGER, val = DOUBLE)`

- `arg_min(arg = INTEGER, val = VARCHAR)`

- `arg_min(arg = INTEGER, val = DATE)`

- `arg_min(arg = INTEGER, val = TIMESTAMP)`

- `` arg_min(arg = INTEGER, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = INTEGER, val = BLOB)`

- `arg_min(arg = BIGINT, val = INTEGER)`

- `arg_min(arg = BIGINT, val = BIGINT)`

- `arg_min(arg = BIGINT, val = HUGEINT)`

- `arg_min(arg = BIGINT, val = DOUBLE)`

- `arg_min(arg = BIGINT, val = VARCHAR)`

- `arg_min(arg = BIGINT, val = DATE)`

- `arg_min(arg = BIGINT, val = TIMESTAMP)`

- `` arg_min(arg = BIGINT, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = BIGINT, val = BLOB)`

- `arg_min(arg = DOUBLE, val = INTEGER)`

- `arg_min(arg = DOUBLE, val = BIGINT)`

- `arg_min(arg = DOUBLE, val = HUGEINT)`

- `arg_min(arg = DOUBLE, val = DOUBLE)`

- `arg_min(arg = DOUBLE, val = VARCHAR)`

- `arg_min(arg = DOUBLE, val = DATE)`

- `arg_min(arg = DOUBLE, val = TIMESTAMP)`

- `` arg_min(arg = DOUBLE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = DOUBLE, val = BLOB)`

- `arg_min(arg = VARCHAR, val = INTEGER)`

- `arg_min(arg = VARCHAR, val = BIGINT)`

- `arg_min(arg = VARCHAR, val = HUGEINT)`

- `arg_min(arg = VARCHAR, val = DOUBLE)`

- `arg_min(arg = VARCHAR, val = VARCHAR)`

- `arg_min(arg = VARCHAR, val = DATE)`

- `arg_min(arg = VARCHAR, val = TIMESTAMP)`

- `` arg_min(arg = VARCHAR, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = VARCHAR, val = BLOB)`

- `arg_min(arg = DATE, val = INTEGER)`

- `arg_min(arg = DATE, val = BIGINT)`

- `arg_min(arg = DATE, val = HUGEINT)`

- `arg_min(arg = DATE, val = DOUBLE)`

- `arg_min(arg = DATE, val = VARCHAR)`

- `arg_min(arg = DATE, val = DATE)`

- `arg_min(arg = DATE, val = TIMESTAMP)`

- `` arg_min(arg = DATE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = DATE, val = BLOB)`

- `arg_min(arg = TIMESTAMP, val = INTEGER)`

- `arg_min(arg = TIMESTAMP, val = BIGINT)`

- `arg_min(arg = TIMESTAMP, val = HUGEINT)`

- `arg_min(arg = TIMESTAMP, val = DOUBLE)`

- `arg_min(arg = TIMESTAMP, val = VARCHAR)`

- `arg_min(arg = TIMESTAMP, val = DATE)`

- `arg_min(arg = TIMESTAMP, val = TIMESTAMP)`

- `` arg_min(arg = TIMESTAMP, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = TIMESTAMP, val = BLOB)`

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = INTEGER) ``

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = BIGINT) ``

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = HUGEINT) ``

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = DOUBLE) ``

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = VARCHAR) ``

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = DATE) ``

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = TIMESTAMP) ``

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = `TIMESTAMP WITH TIME ZONE`) ``

- `` arg_min(arg = `TIMESTAMP WITH TIME ZONE`, val = BLOB) ``

- `arg_min(arg = BLOB, val = INTEGER)`

- `arg_min(arg = BLOB, val = BIGINT)`

- `arg_min(arg = BLOB, val = HUGEINT)`

- `arg_min(arg = BLOB, val = DOUBLE)`

- `arg_min(arg = BLOB, val = VARCHAR)`

- `arg_min(arg = BLOB, val = DATE)`

- `arg_min(arg = BLOB, val = TIMESTAMP)`

- `` arg_min(arg = BLOB, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = BLOB, val = BLOB)`

- `arg_min(arg = DECIMAL, val = INTEGER)`

- `arg_min(arg = DECIMAL, val = BIGINT)`

- `arg_min(arg = DECIMAL, val = HUGEINT)`

- `arg_min(arg = DECIMAL, val = DOUBLE)`

- `arg_min(arg = DECIMAL, val = VARCHAR)`

- `arg_min(arg = DECIMAL, val = DATE)`

- `arg_min(arg = DECIMAL, val = TIMESTAMP)`

- `` arg_min(arg = DECIMAL, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = DECIMAL, val = BLOB)`

- `arg_min(arg = ANY, val = INTEGER)`

- `arg_min(arg = ANY, val = BIGINT)`

- `arg_min(arg = ANY, val = HUGEINT)`

- `arg_min(arg = ANY, val = DOUBLE)`

- `arg_min(arg = ANY, val = VARCHAR)`

- `arg_min(arg = ANY, val = DATE)`

- `arg_min(arg = ANY, val = TIMESTAMP)`

- `` arg_min(arg = ANY, val = `TIMESTAMP WITH TIME ZONE`) ``

- `arg_min(arg = ANY, val = BLOB)`

- `arg_min(arg = ANY, val = ANY)`

- `arg_min(arg = ANY, val = ANY, col2 = BIGINT)`

## SQL examples

    arg_min(A, B)
