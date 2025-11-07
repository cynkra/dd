# DuckDB function \<\<

Bitwise shift left.

## Arguments

- input:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT | BIT`

- col1:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT`

## Value

`TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | UTINYINT | USMALLINT | UINTEGER | UBIGINT | UHUGEINT | BIT`

## Overloads

- `` `<<`(input = TINYINT, col1 = TINYINT) ``

- `` `<<`(input = SMALLINT, col1 = SMALLINT) ``

- `` `<<`(input = INTEGER, col1 = INTEGER) ``

- `` `<<`(input = BIGINT, col1 = BIGINT) ``

- `` `<<`(input = HUGEINT, col1 = HUGEINT) ``

- `` `<<`(input = UTINYINT, col1 = UTINYINT) ``

- `` `<<`(input = USMALLINT, col1 = USMALLINT) ``

- `` `<<`(input = UINTEGER, col1 = UINTEGER) ``

- `` `<<`(input = UBIGINT, col1 = UBIGINT) ``

- `` `<<`(input = UHUGEINT, col1 = UHUGEINT) ``

- `` `<<`(input = BIT, col1 = INTEGER) ``

## SQL examples

    1 << 4
