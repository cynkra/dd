# DuckDB function xor

Bitwise XOR.

## Arguments

- left:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT | BIT`

- right:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT | BIT`

## Value

`TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT | BIT`

## Overloads

- `xor(left = TINYINT, right = TINYINT)`

- `xor(left = SMALLINT, right = SMALLINT)`

- `xor(left = INTEGER, right = INTEGER)`

- `xor(left = BIGINT, right = BIGINT)`

- `xor(left = HUGEINT, right = HUGEINT)`

- `xor(left = UTINYINT, right = UTINYINT)`

- `xor(left = USMALLINT, right = USMALLINT)`

- `xor(left = UINTEGER, right = UINTEGER)`

- `xor(left = UBIGINT, right = UBIGINT)`

- `xor(left = UHUGEINT, right = UHUGEINT)`

- `xor(left = BIT, right = BIT)`

## SQL examples

    xor(17, 5)
