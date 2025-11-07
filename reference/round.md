# DuckDB function round

Rounds x to s decimal places.

## Arguments

- x:

  `TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DECIMAL`

- precision:

  `INTEGER`

## Value

`TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DECIMAL`

## Overloads

- `round(x = TINYINT)`

- `round(x = TINYINT, precision = INTEGER)`

- `round(x = SMALLINT)`

- `round(x = SMALLINT, precision = INTEGER)`

- `round(x = INTEGER)`

- `round(x = INTEGER, precision = INTEGER)`

- `round(x = BIGINT)`

- `round(x = BIGINT, precision = INTEGER)`

- `round(x = HUGEINT)`

- `round(x = HUGEINT, precision = INTEGER)`

- `round(x = FLOAT)`

- `round(x = FLOAT, precision = INTEGER)`

- `round(x = DOUBLE)`

- `round(x = DOUBLE, precision = INTEGER)`

- `round(x = DECIMAL)`

- `round(x = DECIMAL, precision = INTEGER)`

## SQL examples

    round(42.4332, 2)
