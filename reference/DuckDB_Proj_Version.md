# DuckDB function DuckDB_Proj_Version

Returns a text description of the PROJ library version that is being
used by this instance of DuckDB.

## Usage

``` r
DuckDB_Proj_Version()
```

## Value

`VARCHAR`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT duckdb_proj_version();
    -- +-----------------------+
    -- | duckdb_proj_version() |
    -- |        varchar        |
    -- +-----------------------+
    -- | 9.1.1                 |geometry_always_xy
    -- +-----------------------+
