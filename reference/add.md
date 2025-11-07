# DuckDB function add

DuckDB function `add()`.

## Arguments

- col0:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DECIMAL | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT | DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | BIGNUM`

- col1:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DECIMAL | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT | DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | BIGNUM`

## Value

`TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DECIMAL | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT | DATE | INTERVAL | TIMESTAMP | TIME | TIME WITH TIME ZONE | TIMESTAMP WITH TIME ZONE | ANY[] | BIGNUM`

## Overloads

- `add(col0 = TINYINT)`

- `add(col0 = TINYINT, col1 = TINYINT)`

- `add(col0 = SMALLINT)`

- `add(col0 = SMALLINT, col1 = SMALLINT)`

- `add(col0 = INTEGER)`

- `add(col0 = INTEGER, col1 = INTEGER)`

- `add(col0 = BIGINT)`

- `add(col0 = BIGINT, col1 = BIGINT)`

- `add(col0 = HUGEINT)`

- `add(col0 = HUGEINT, col1 = HUGEINT)`

- `add(col0 = FLOAT)`

- `add(col0 = FLOAT, col1 = FLOAT)`

- `add(col0 = DOUBLE)`

- `add(col0 = DOUBLE, col1 = DOUBLE)`

- `add(col0 = DECIMAL)`

- `add(col0 = DECIMAL, col1 = DECIMAL)`

- `add(col0 = UTINYINT)`

- `add(col0 = UTINYINT, col1 = UTINYINT)`

- `add(col0 = USMALLINT)`

- `add(col0 = USMALLINT, col1 = USMALLINT)`

- `add(col0 = UINTEGER)`

- `add(col0 = UINTEGER, col1 = UINTEGER)`

- `add(col0 = UBIGINT)`

- `add(col0 = UBIGINT, col1 = UBIGINT)`

- `add(col0 = UHUGEINT)`

- `add(col0 = UHUGEINT, col1 = UHUGEINT)`

- `add(col0 = DATE, col1 = INTEGER)`

- `add(col0 = INTEGER, col1 = DATE)`

- `add(col0 = INTERVAL, col1 = INTERVAL)`

- `add(col0 = DATE, col1 = INTERVAL)`

- `add(col0 = INTERVAL, col1 = DATE)`

- `add(col0 = TIME, col1 = INTERVAL)`

- `add(col0 = INTERVAL, col1 = TIME)`

- `add(col0 = TIMESTAMP, col1 = INTERVAL)`

- `add(col0 = INTERVAL, col1 = TIMESTAMP)`

- `` add(col0 = `TIME WITH TIME ZONE`, col1 = INTERVAL) ``

- `` add(col0 = INTERVAL, col1 = `TIME WITH TIME ZONE`) ``

- `add(col0 = TIME, col1 = DATE)`

- `add(col0 = DATE, col1 = TIME)`

- `` add(col0 = `TIME WITH TIME ZONE`, col1 = DATE) ``

- `` add(col0 = DATE, col1 = `TIME WITH TIME ZONE`) ``

- `add()`

- `add(col0 = BIGNUM, col1 = BIGNUM)`
