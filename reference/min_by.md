# DuckDB function min_by

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

- `min_by(arg = INTEGER, val = INTEGER)`

- `min_by(arg = INTEGER, val = BIGINT)`

- `min_by(arg = INTEGER, val = HUGEINT)`

- `min_by(arg = INTEGER, val = DOUBLE)`

- `min_by(arg = INTEGER, val = VARCHAR)`

- `min_by(arg = INTEGER, val = DATE)`

- `min_by(arg = INTEGER, val = TIMESTAMP)`

- `` min_by(arg = INTEGER, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = INTEGER, val = BLOB)`

- `min_by(arg = BIGINT, val = INTEGER)`

- `min_by(arg = BIGINT, val = BIGINT)`

- `min_by(arg = BIGINT, val = HUGEINT)`

- `min_by(arg = BIGINT, val = DOUBLE)`

- `min_by(arg = BIGINT, val = VARCHAR)`

- `min_by(arg = BIGINT, val = DATE)`

- `min_by(arg = BIGINT, val = TIMESTAMP)`

- `` min_by(arg = BIGINT, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = BIGINT, val = BLOB)`

- `min_by(arg = DOUBLE, val = INTEGER)`

- `min_by(arg = DOUBLE, val = BIGINT)`

- `min_by(arg = DOUBLE, val = HUGEINT)`

- `min_by(arg = DOUBLE, val = DOUBLE)`

- `min_by(arg = DOUBLE, val = VARCHAR)`

- `min_by(arg = DOUBLE, val = DATE)`

- `min_by(arg = DOUBLE, val = TIMESTAMP)`

- `` min_by(arg = DOUBLE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = DOUBLE, val = BLOB)`

- `min_by(arg = VARCHAR, val = INTEGER)`

- `min_by(arg = VARCHAR, val = BIGINT)`

- `min_by(arg = VARCHAR, val = HUGEINT)`

- `min_by(arg = VARCHAR, val = DOUBLE)`

- `min_by(arg = VARCHAR, val = VARCHAR)`

- `min_by(arg = VARCHAR, val = DATE)`

- `min_by(arg = VARCHAR, val = TIMESTAMP)`

- `` min_by(arg = VARCHAR, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = VARCHAR, val = BLOB)`

- `min_by(arg = DATE, val = INTEGER)`

- `min_by(arg = DATE, val = BIGINT)`

- `min_by(arg = DATE, val = HUGEINT)`

- `min_by(arg = DATE, val = DOUBLE)`

- `min_by(arg = DATE, val = VARCHAR)`

- `min_by(arg = DATE, val = DATE)`

- `min_by(arg = DATE, val = TIMESTAMP)`

- `` min_by(arg = DATE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = DATE, val = BLOB)`

- `min_by(arg = TIMESTAMP, val = INTEGER)`

- `min_by(arg = TIMESTAMP, val = BIGINT)`

- `min_by(arg = TIMESTAMP, val = HUGEINT)`

- `min_by(arg = TIMESTAMP, val = DOUBLE)`

- `min_by(arg = TIMESTAMP, val = VARCHAR)`

- `min_by(arg = TIMESTAMP, val = DATE)`

- `min_by(arg = TIMESTAMP, val = TIMESTAMP)`

- `` min_by(arg = TIMESTAMP, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = TIMESTAMP, val = BLOB)`

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = INTEGER) ``

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = BIGINT) ``

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = HUGEINT) ``

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = DOUBLE) ``

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = VARCHAR) ``

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = DATE) ``

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = TIMESTAMP) ``

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = `TIMESTAMP WITH TIME ZONE`) ``

- `` min_by(arg = `TIMESTAMP WITH TIME ZONE`, val = BLOB) ``

- `min_by(arg = BLOB, val = INTEGER)`

- `min_by(arg = BLOB, val = BIGINT)`

- `min_by(arg = BLOB, val = HUGEINT)`

- `min_by(arg = BLOB, val = DOUBLE)`

- `min_by(arg = BLOB, val = VARCHAR)`

- `min_by(arg = BLOB, val = DATE)`

- `min_by(arg = BLOB, val = TIMESTAMP)`

- `` min_by(arg = BLOB, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = BLOB, val = BLOB)`

- `min_by(arg = DECIMAL, val = INTEGER)`

- `min_by(arg = DECIMAL, val = BIGINT)`

- `min_by(arg = DECIMAL, val = HUGEINT)`

- `min_by(arg = DECIMAL, val = DOUBLE)`

- `min_by(arg = DECIMAL, val = VARCHAR)`

- `min_by(arg = DECIMAL, val = DATE)`

- `min_by(arg = DECIMAL, val = TIMESTAMP)`

- `` min_by(arg = DECIMAL, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = DECIMAL, val = BLOB)`

- `min_by(arg = ANY, val = INTEGER)`

- `min_by(arg = ANY, val = BIGINT)`

- `min_by(arg = ANY, val = HUGEINT)`

- `min_by(arg = ANY, val = DOUBLE)`

- `min_by(arg = ANY, val = VARCHAR)`

- `min_by(arg = ANY, val = DATE)`

- `min_by(arg = ANY, val = TIMESTAMP)`

- `` min_by(arg = ANY, val = `TIMESTAMP WITH TIME ZONE`) ``

- `min_by(arg = ANY, val = BLOB)`

- `min_by(arg = ANY, val = ANY)`

- `min_by(arg = ANY, val = ANY, col2 = BIGINT)`

## SQL examples

    min_by(A, B)
