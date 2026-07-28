# DuckDB function ST_Multi

Turns a single geometry into a multi geometry.

If the geometry is already a multi geometry, it is returned as is.

## Usage

``` r
ST_Multi(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Multi(ST_GeomFromText('POINT(1 2)'));
    -- MULTIPOINT (1 2)
    --
    -- SELECT ST_Multi(ST_GeomFromText('LINESTRING(1 1, 2 2)'));
    -- MULTILINESTRING ((1 1, 2 2))
    --
    -- SELECT ST_Multi(ST_GeomFromText('POLYGON((0 0, 0 1, 1 1, 1 0, 0 0))'));
    -- MULTIPOLYGON (((0 0, 0 1, 1 1, 1 0, 0 0)))
