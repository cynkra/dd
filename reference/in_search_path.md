# DuckDB function in_search_path

Returns whether or not the database/schema are in the search path.

## Usage

``` r
in_search_path(database_name, schema_name)
```

## Arguments

- database_name, schema_name:

  `VARCHAR`

## Value

`BOOLEAN`

## SQL examples

    in_search_path('memory', 'main')
