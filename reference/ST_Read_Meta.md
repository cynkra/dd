# DuckDB function ST_Read_Meta

Read the metadata from a variety of geospatial file formats using the
GDAL library.

The `ST_Read_Meta` table function accompanies the `ST_Read` table
function, but instead of reading the contents of a file, this function
scans the metadata instead. Since the data model of the underlying GDAL
library is quite flexible, most of the interesting metadata is within
the returned `layers` column, which is a somewhat complex nested
structure of DuckDB `STRUCT` and `LIST` types.

## Usage

``` r
ST_Read_Meta(col0)
```

## Arguments

- col0:

  `VARCHAR | VARCHAR[]`

## Value

Unspecified.

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Find the coordinate reference system authority name and code for the first layers first geometry column in the file
    SELECT
        layers[1].geometry_fields[1].crs.auth_name as name,
        layers[1].geometry_fields[1].crs.auth_code as code
    FROM st_read_meta('../../tmp/data/amsterdam_roads.fgb');
