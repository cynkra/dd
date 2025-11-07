# DuckDB function in_search_path

Returns whether or not the database/schema are in the search path.

## Usage

``` r
in_search_path(database_name = VARCHAR, schema_name = VARCHAR)
```

## Arguments

- database_name:

  `VARCHAR`

- schema_name:

  `VARCHAR`

## Value

`BOOLEAN`

## SQL examples

    in_search_path('memory', 'main')
