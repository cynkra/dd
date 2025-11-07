# DuckDB function array_extract

Extracts a single character from a `string` using a (1-based) `index`.

Extracts the named `entry` from the `STRUCT`.

Extracts the entry from an unnamed `STRUCT` (tuple) using an index
(1-based).

## Arguments

- col0:

  `T[]`

- col1:

  `BIGINT`

- string:

  `VARCHAR`

- index:

  `BIGINT`

- struct:

  `STRUCT`

- entry:

  `VARCHAR`

## Value

`T | VARCHAR | ANY`

## Overloads

- `` array_extract(col0 = `T[]`, col1 = BIGINT) ``

- `array_extract(string = VARCHAR, index = BIGINT)`

- `array_extract(struct = STRUCT, entry = VARCHAR)`

- `array_extract(struct = STRUCT, index = BIGINT)`

## SQL examples

    array_extract('DuckDB', 2)
    array_extract({'i': 3, 'v2': 3, 'v3': 0}, 'i')
    array_extract(row(42, 84), 1)
