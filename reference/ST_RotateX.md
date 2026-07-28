# DuckDB function ST_RotateX

Rotates a geometry around the X axis. This is a shorthand macro for
calling ST_Affine.

## Usage

``` r
ST_RotateX(geom, radians)
```

## Arguments

- geom, radians:

  Unspecified.

## Value

Unspecified.

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Rotate a 3D point 90 degrees (π/2 radians) around the X-axis
    SELECT ST_RotateX(ST_GeomFromText('POINT Z(0 1 0)'), pi()/2);
    -- POINT Z (0 0 1)
