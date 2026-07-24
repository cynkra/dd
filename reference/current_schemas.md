# DuckDB function current_schemas

Returns list of schemas. Pass a parameter of True to include implicit
schemas.

## Usage

``` r
current_schemas(include_implicit)
```

## Arguments

- include_implicit:

  `BOOLEAN`

## Value

`VARCHAR[]`

## SQL examples

    current_schemas(true)
