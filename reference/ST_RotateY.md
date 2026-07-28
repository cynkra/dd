# DuckDB function ST_RotateY

Rotates a geometry around the Y axis. This is a shorthand macro for
calling ST_Affine.

## Usage

``` r
ST_RotateY(geom, radians)
```

## Arguments

- geom, radians:

  Unspecified.

## Value

Unspecified.

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Rotate a 3D point 90 degrees (π/2 radians) around the Y-axis
    SELECT ST_RotateY(ST_GeomFromText('POINT Z(1 0 0)'), pi()/2);
    -- POINT Z (0 0 -1)
