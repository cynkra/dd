# DuckDB function ST_HasZ

Check if the input geometry has Z values.

## Usage

``` r
ST_HasZ(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- HasZ for a 2D geometry
    SELECT ST_HasZ(ST_GeomFromText('POINT(1 1)'));
    -- false
    --
    -- -- HasZ for a 3DZ geometry
    -- SELECT ST_HasZ(ST_GeomFromText('POINT Z(1 1 1)'));
    -- true
    --
    -- -- HasZ for a 3DM geometry
    -- SELECT ST_HasZ(ST_GeomFromText('POINT M(1 1 1)'));
    -- false
    --
    -- -- HasZ for a 4D geometry
    -- SELECT ST_HasZ(ST_GeomFromText('POINT ZM(1 1 1 1)'));
    -- true
