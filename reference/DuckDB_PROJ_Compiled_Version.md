# DuckDB function DuckDB_PROJ_Compiled_Version

Returns a text description of the PROJ library version that this
instance of DuckDB was compiled against.

## Usage

``` r
DuckDB_PROJ_Compiled_Version()
```

## Value

`VARCHAR`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT duckdb_proj_compiled_version();
    -- +--------------------------------+
    -- | duckdb_proj_compiled_version() |
    -- |            varchar             |
    -- +--------------------------------+
    -- | Rel. 9.1.1, December 1st, 2022 |
    -- +--------------------------------+
