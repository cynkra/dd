# DuckDB function max_by

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

- `max_by(arg = INTEGER, val = INTEGER)`

- `max_by(arg = INTEGER, val = BIGINT)`

- `max_by(arg = INTEGER, val = HUGEINT)`

- `max_by(arg = INTEGER, val = DOUBLE)`

- `max_by(arg = INTEGER, val = VARCHAR)`

- `max_by(arg = INTEGER, val = DATE)`

- `max_by(arg = INTEGER, val = TIMESTAMP)`

- `` max_by(arg = INTEGER, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = INTEGER, val = BLOB)`

- `max_by(arg = BIGINT, val = INTEGER)`

- `max_by(arg = BIGINT, val = BIGINT)`

- `max_by(arg = BIGINT, val = HUGEINT)`

- `max_by(arg = BIGINT, val = DOUBLE)`

- `max_by(arg = BIGINT, val = VARCHAR)`

- `max_by(arg = BIGINT, val = DATE)`

- `max_by(arg = BIGINT, val = TIMESTAMP)`

- `` max_by(arg = BIGINT, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = BIGINT, val = BLOB)`

- `max_by(arg = DOUBLE, val = INTEGER)`

- `max_by(arg = DOUBLE, val = BIGINT)`

- `max_by(arg = DOUBLE, val = HUGEINT)`

- `max_by(arg = DOUBLE, val = DOUBLE)`

- `max_by(arg = DOUBLE, val = VARCHAR)`

- `max_by(arg = DOUBLE, val = DATE)`

- `max_by(arg = DOUBLE, val = TIMESTAMP)`

- `` max_by(arg = DOUBLE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = DOUBLE, val = BLOB)`

- `max_by(arg = VARCHAR, val = INTEGER)`

- `max_by(arg = VARCHAR, val = BIGINT)`

- `max_by(arg = VARCHAR, val = HUGEINT)`

- `max_by(arg = VARCHAR, val = DOUBLE)`

- `max_by(arg = VARCHAR, val = VARCHAR)`

- `max_by(arg = VARCHAR, val = DATE)`

- `max_by(arg = VARCHAR, val = TIMESTAMP)`

- `` max_by(arg = VARCHAR, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = VARCHAR, val = BLOB)`

- `max_by(arg = DATE, val = INTEGER)`

- `max_by(arg = DATE, val = BIGINT)`

- `max_by(arg = DATE, val = HUGEINT)`

- `max_by(arg = DATE, val = DOUBLE)`

- `max_by(arg = DATE, val = VARCHAR)`

- `max_by(arg = DATE, val = DATE)`

- `max_by(arg = DATE, val = TIMESTAMP)`

- `` max_by(arg = DATE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = DATE, val = BLOB)`

- `max_by(arg = TIMESTAMP, val = INTEGER)`

- `max_by(arg = TIMESTAMP, val = BIGINT)`

- `max_by(arg = TIMESTAMP, val = HUGEINT)`

- `max_by(arg = TIMESTAMP, val = DOUBLE)`

- `max_by(arg = TIMESTAMP, val = VARCHAR)`

- `max_by(arg = TIMESTAMP, val = DATE)`

- `max_by(arg = TIMESTAMP, val = TIMESTAMP)`

- `` max_by(arg = TIMESTAMP, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = TIMESTAMP, val = BLOB)`

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = INTEGER) ``

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = BIGINT) ``

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = HUGEINT) ``

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = DOUBLE) ``

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = VARCHAR) ``

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = DATE) ``

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = TIMESTAMP) ``

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = `TIMESTAMP WITH TIME ZONE`) ``

- `` max_by(arg = `TIMESTAMP WITH TIME ZONE`, val = BLOB) ``

- `max_by(arg = BLOB, val = INTEGER)`

- `max_by(arg = BLOB, val = BIGINT)`

- `max_by(arg = BLOB, val = HUGEINT)`

- `max_by(arg = BLOB, val = DOUBLE)`

- `max_by(arg = BLOB, val = VARCHAR)`

- `max_by(arg = BLOB, val = DATE)`

- `max_by(arg = BLOB, val = TIMESTAMP)`

- `` max_by(arg = BLOB, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = BLOB, val = BLOB)`

- `max_by(arg = DECIMAL, val = INTEGER)`

- `max_by(arg = DECIMAL, val = BIGINT)`

- `max_by(arg = DECIMAL, val = HUGEINT)`

- `max_by(arg = DECIMAL, val = DOUBLE)`

- `max_by(arg = DECIMAL, val = VARCHAR)`

- `max_by(arg = DECIMAL, val = DATE)`

- `max_by(arg = DECIMAL, val = TIMESTAMP)`

- `` max_by(arg = DECIMAL, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = DECIMAL, val = BLOB)`

- `max_by(arg = ANY, val = INTEGER)`

- `max_by(arg = ANY, val = BIGINT)`

- `max_by(arg = ANY, val = HUGEINT)`

- `max_by(arg = ANY, val = DOUBLE)`

- `max_by(arg = ANY, val = VARCHAR)`

- `max_by(arg = ANY, val = DATE)`

- `max_by(arg = ANY, val = TIMESTAMP)`

- `` max_by(arg = ANY, val = `TIMESTAMP WITH TIME ZONE`) ``

- `max_by(arg = ANY, val = BLOB)`

- `max_by(arg = ANY, val = ANY)`

- `max_by(arg = ANY, val = ANY, col2 = BIGINT)`

## SQL examples

    max_by(A, B)
