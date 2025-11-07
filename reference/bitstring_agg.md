# DuckDB function bitstring_agg

Returns a bitstring with bits set for each distinct value.

## Arguments

- arg:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT`

- col1:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT`

- col2:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT`

## Value

`BIT`

## Overloads

- `bitstring_agg(arg = TINYINT)`

- `bitstring_agg(arg = TINYINT, col1 = TINYINT, col2 = TINYINT)`

- `bitstring_agg(arg = SMALLINT)`

- `bitstring_agg(arg = SMALLINT, col1 = SMALLINT, col2 = SMALLINT)`

- `bitstring_agg(arg = INTEGER)`

- `bitstring_agg(arg = INTEGER, col1 = INTEGER, col2 = INTEGER)`

- `bitstring_agg(arg = BIGINT)`

- `bitstring_agg(arg = BIGINT, col1 = BIGINT, col2 = BIGINT)`

- `bitstring_agg(arg = HUGEINT)`

- `bitstring_agg(arg = HUGEINT, col1 = HUGEINT, col2 = HUGEINT)`

- `bitstring_agg(arg = UTINYINT)`

- `bitstring_agg(arg = UTINYINT, col1 = UTINYINT, col2 = UTINYINT)`

- `bitstring_agg(arg = USMALLINT)`

- `bitstring_agg(arg = USMALLINT, col1 = USMALLINT, col2 = USMALLINT)`

- `bitstring_agg(arg = UINTEGER)`

- `bitstring_agg(arg = UINTEGER, col1 = UINTEGER, col2 = UINTEGER)`

- `bitstring_agg(arg = UBIGINT)`

- `bitstring_agg(arg = UBIGINT, col1 = UBIGINT, col2 = UBIGINT)`

- `bitstring_agg(arg = UHUGEINT)`

- `bitstring_agg(arg = UHUGEINT, col1 = UHUGEINT, col2 = UHUGEINT)`

## SQL examples

    bitstring_agg(A)
