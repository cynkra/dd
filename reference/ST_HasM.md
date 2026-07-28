# DuckDB function ST_HasM

Check if the input geometry has M values.

## Usage

``` r
ST_HasM(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- HasM for a 2D geometry
    SELECT ST_HasM(ST_GeomFromText('POINT(1 1)'));
    -- false
    --
    -- -- HasM for a 3DZ geometry
    -- SELECT ST_HasM(ST_GeomFromText('POINT Z(1 1 1)'));
    -- false
    --
    -- -- HasM for a 3DM geometry
    -- SELECT ST_HasM(ST_GeomFromText('POINT M(1 1 1)'));
    -- true
    --
    -- -- HasM for a 4D geometry
    -- SELECT ST_HasM(ST_GeomFromText('POINT ZM(1 1 1 1)'));
    -- true
