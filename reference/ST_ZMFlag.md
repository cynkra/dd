# DuckDB function ST_ZMFlag

Returns a flag indicating the presence of Z and M values in the input
geometry. 0 = No Z or M values 1 = M values only 2 = Z values only 3 = Z
and M values.

## Usage

``` r
ST_ZMFlag(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`UTINYINT`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- ZMFlag for a 2D geometry
    SELECT ST_ZMFlag(ST_GeomFromText('POINT(1 1)'));
    -- 0
    --
    -- -- ZMFlag for a 3DZ geometry
    -- SELECT ST_ZMFlag(ST_GeomFromText('POINT Z(1 1 1)'));
    -- 2
    --
    -- -- ZMFlag for a 3DM geometry
    -- SELECT ST_ZMFlag(ST_GeomFromText('POINT M(1 1 1)'));
    -- 1
    --
    -- -- ZMFlag for a 4D geometry
    -- SELECT ST_ZMFlag(ST_GeomFromText('POINT ZM(1 1 1 1)'));
    -- 3
