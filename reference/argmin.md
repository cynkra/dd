# DuckDB function argmin

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

- `argmin(arg = INTEGER, val = INTEGER)`

- `argmin(arg = INTEGER, val = BIGINT)`

- `argmin(arg = INTEGER, val = HUGEINT)`

- `argmin(arg = INTEGER, val = DOUBLE)`

- `argmin(arg = INTEGER, val = VARCHAR)`

- `argmin(arg = INTEGER, val = DATE)`

- `argmin(arg = INTEGER, val = TIMESTAMP)`

- `` argmin(arg = INTEGER, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = INTEGER, val = BLOB)`

- `argmin(arg = BIGINT, val = INTEGER)`

- `argmin(arg = BIGINT, val = BIGINT)`

- `argmin(arg = BIGINT, val = HUGEINT)`

- `argmin(arg = BIGINT, val = DOUBLE)`

- `argmin(arg = BIGINT, val = VARCHAR)`

- `argmin(arg = BIGINT, val = DATE)`

- `argmin(arg = BIGINT, val = TIMESTAMP)`

- `` argmin(arg = BIGINT, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = BIGINT, val = BLOB)`

- `argmin(arg = DOUBLE, val = INTEGER)`

- `argmin(arg = DOUBLE, val = BIGINT)`

- `argmin(arg = DOUBLE, val = HUGEINT)`

- `argmin(arg = DOUBLE, val = DOUBLE)`

- `argmin(arg = DOUBLE, val = VARCHAR)`

- `argmin(arg = DOUBLE, val = DATE)`

- `argmin(arg = DOUBLE, val = TIMESTAMP)`

- `` argmin(arg = DOUBLE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = DOUBLE, val = BLOB)`

- `argmin(arg = VARCHAR, val = INTEGER)`

- `argmin(arg = VARCHAR, val = BIGINT)`

- `argmin(arg = VARCHAR, val = HUGEINT)`

- `argmin(arg = VARCHAR, val = DOUBLE)`

- `argmin(arg = VARCHAR, val = VARCHAR)`

- `argmin(arg = VARCHAR, val = DATE)`

- `argmin(arg = VARCHAR, val = TIMESTAMP)`

- `` argmin(arg = VARCHAR, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = VARCHAR, val = BLOB)`

- `argmin(arg = DATE, val = INTEGER)`

- `argmin(arg = DATE, val = BIGINT)`

- `argmin(arg = DATE, val = HUGEINT)`

- `argmin(arg = DATE, val = DOUBLE)`

- `argmin(arg = DATE, val = VARCHAR)`

- `argmin(arg = DATE, val = DATE)`

- `argmin(arg = DATE, val = TIMESTAMP)`

- `` argmin(arg = DATE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = DATE, val = BLOB)`

- `argmin(arg = TIMESTAMP, val = INTEGER)`

- `argmin(arg = TIMESTAMP, val = BIGINT)`

- `argmin(arg = TIMESTAMP, val = HUGEINT)`

- `argmin(arg = TIMESTAMP, val = DOUBLE)`

- `argmin(arg = TIMESTAMP, val = VARCHAR)`

- `argmin(arg = TIMESTAMP, val = DATE)`

- `argmin(arg = TIMESTAMP, val = TIMESTAMP)`

- `` argmin(arg = TIMESTAMP, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = TIMESTAMP, val = BLOB)`

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = INTEGER) ``

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = BIGINT) ``

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = HUGEINT) ``

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = DOUBLE) ``

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = VARCHAR) ``

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = DATE) ``

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = TIMESTAMP) ``

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = `TIMESTAMP WITH TIME ZONE`) ``

- `` argmin(arg = `TIMESTAMP WITH TIME ZONE`, val = BLOB) ``

- `argmin(arg = BLOB, val = INTEGER)`

- `argmin(arg = BLOB, val = BIGINT)`

- `argmin(arg = BLOB, val = HUGEINT)`

- `argmin(arg = BLOB, val = DOUBLE)`

- `argmin(arg = BLOB, val = VARCHAR)`

- `argmin(arg = BLOB, val = DATE)`

- `argmin(arg = BLOB, val = TIMESTAMP)`

- `` argmin(arg = BLOB, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = BLOB, val = BLOB)`

- `argmin(arg = DECIMAL, val = INTEGER)`

- `argmin(arg = DECIMAL, val = BIGINT)`

- `argmin(arg = DECIMAL, val = HUGEINT)`

- `argmin(arg = DECIMAL, val = DOUBLE)`

- `argmin(arg = DECIMAL, val = VARCHAR)`

- `argmin(arg = DECIMAL, val = DATE)`

- `argmin(arg = DECIMAL, val = TIMESTAMP)`

- `` argmin(arg = DECIMAL, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = DECIMAL, val = BLOB)`

- `argmin(arg = ANY, val = INTEGER)`

- `argmin(arg = ANY, val = BIGINT)`

- `argmin(arg = ANY, val = HUGEINT)`

- `argmin(arg = ANY, val = DOUBLE)`

- `argmin(arg = ANY, val = VARCHAR)`

- `argmin(arg = ANY, val = DATE)`

- `argmin(arg = ANY, val = TIMESTAMP)`

- `` argmin(arg = ANY, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmin(arg = ANY, val = BLOB)`

- `argmin(arg = ANY, val = ANY)`

- `argmin(arg = ANY, val = ANY, col2 = BIGINT)`

## SQL examples

    argmin(A, B)
