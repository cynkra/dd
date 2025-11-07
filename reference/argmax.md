# DuckDB function argmax

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

- `argmax(arg = INTEGER, val = INTEGER)`

- `argmax(arg = INTEGER, val = BIGINT)`

- `argmax(arg = INTEGER, val = HUGEINT)`

- `argmax(arg = INTEGER, val = DOUBLE)`

- `argmax(arg = INTEGER, val = VARCHAR)`

- `argmax(arg = INTEGER, val = DATE)`

- `argmax(arg = INTEGER, val = TIMESTAMP)`

- `` argmax(arg = INTEGER, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = INTEGER, val = BLOB)`

- `argmax(arg = BIGINT, val = INTEGER)`

- `argmax(arg = BIGINT, val = BIGINT)`

- `argmax(arg = BIGINT, val = HUGEINT)`

- `argmax(arg = BIGINT, val = DOUBLE)`

- `argmax(arg = BIGINT, val = VARCHAR)`

- `argmax(arg = BIGINT, val = DATE)`

- `argmax(arg = BIGINT, val = TIMESTAMP)`

- `` argmax(arg = BIGINT, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = BIGINT, val = BLOB)`

- `argmax(arg = DOUBLE, val = INTEGER)`

- `argmax(arg = DOUBLE, val = BIGINT)`

- `argmax(arg = DOUBLE, val = HUGEINT)`

- `argmax(arg = DOUBLE, val = DOUBLE)`

- `argmax(arg = DOUBLE, val = VARCHAR)`

- `argmax(arg = DOUBLE, val = DATE)`

- `argmax(arg = DOUBLE, val = TIMESTAMP)`

- `` argmax(arg = DOUBLE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = DOUBLE, val = BLOB)`

- `argmax(arg = VARCHAR, val = INTEGER)`

- `argmax(arg = VARCHAR, val = BIGINT)`

- `argmax(arg = VARCHAR, val = HUGEINT)`

- `argmax(arg = VARCHAR, val = DOUBLE)`

- `argmax(arg = VARCHAR, val = VARCHAR)`

- `argmax(arg = VARCHAR, val = DATE)`

- `argmax(arg = VARCHAR, val = TIMESTAMP)`

- `` argmax(arg = VARCHAR, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = VARCHAR, val = BLOB)`

- `argmax(arg = DATE, val = INTEGER)`

- `argmax(arg = DATE, val = BIGINT)`

- `argmax(arg = DATE, val = HUGEINT)`

- `argmax(arg = DATE, val = DOUBLE)`

- `argmax(arg = DATE, val = VARCHAR)`

- `argmax(arg = DATE, val = DATE)`

- `argmax(arg = DATE, val = TIMESTAMP)`

- `` argmax(arg = DATE, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = DATE, val = BLOB)`

- `argmax(arg = TIMESTAMP, val = INTEGER)`

- `argmax(arg = TIMESTAMP, val = BIGINT)`

- `argmax(arg = TIMESTAMP, val = HUGEINT)`

- `argmax(arg = TIMESTAMP, val = DOUBLE)`

- `argmax(arg = TIMESTAMP, val = VARCHAR)`

- `argmax(arg = TIMESTAMP, val = DATE)`

- `argmax(arg = TIMESTAMP, val = TIMESTAMP)`

- `` argmax(arg = TIMESTAMP, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = TIMESTAMP, val = BLOB)`

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = INTEGER) ``

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = BIGINT) ``

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = HUGEINT) ``

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = DOUBLE) ``

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = VARCHAR) ``

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = DATE) ``

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = TIMESTAMP) ``

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = `TIMESTAMP WITH TIME ZONE`) ``

- `` argmax(arg = `TIMESTAMP WITH TIME ZONE`, val = BLOB) ``

- `argmax(arg = BLOB, val = INTEGER)`

- `argmax(arg = BLOB, val = BIGINT)`

- `argmax(arg = BLOB, val = HUGEINT)`

- `argmax(arg = BLOB, val = DOUBLE)`

- `argmax(arg = BLOB, val = VARCHAR)`

- `argmax(arg = BLOB, val = DATE)`

- `argmax(arg = BLOB, val = TIMESTAMP)`

- `` argmax(arg = BLOB, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = BLOB, val = BLOB)`

- `argmax(arg = DECIMAL, val = INTEGER)`

- `argmax(arg = DECIMAL, val = BIGINT)`

- `argmax(arg = DECIMAL, val = HUGEINT)`

- `argmax(arg = DECIMAL, val = DOUBLE)`

- `argmax(arg = DECIMAL, val = VARCHAR)`

- `argmax(arg = DECIMAL, val = DATE)`

- `argmax(arg = DECIMAL, val = TIMESTAMP)`

- `` argmax(arg = DECIMAL, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = DECIMAL, val = BLOB)`

- `argmax(arg = ANY, val = INTEGER)`

- `argmax(arg = ANY, val = BIGINT)`

- `argmax(arg = ANY, val = HUGEINT)`

- `argmax(arg = ANY, val = DOUBLE)`

- `argmax(arg = ANY, val = VARCHAR)`

- `argmax(arg = ANY, val = DATE)`

- `argmax(arg = ANY, val = TIMESTAMP)`

- `` argmax(arg = ANY, val = `TIMESTAMP WITH TIME ZONE`) ``

- `argmax(arg = ANY, val = BLOB)`

- `argmax(arg = ANY, val = ANY)`

- `argmax(arg = ANY, val = ANY, col2 = BIGINT)`

## SQL examples

    argmax(A, B)
