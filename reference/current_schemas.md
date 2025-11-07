# DuckDB function current_schemas

Returns list of schemas. Pass a parameter of True to include implicit
schemas.

## Arguments

- include_implicit:

  `BOOLEAN`

## Value

`VARCHAR[]`

## Overloads

- `current_schemas(include_implicit = BOOLEAN)`

- `current_schemas(include_implicit)`

## SQL examples

    current_schemas(true)
