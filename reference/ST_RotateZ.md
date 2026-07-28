# DuckDB function ST_RotateZ

Rotates a geometry around the Z axis. This is a shorthand macro for
calling ST_Affine.

## Usage

``` r
ST_RotateZ(geom, radians)
```

## Arguments

- geom, radians:

  Unspecified.

## Value

Unspecified.

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Rotate a point 90 degrees (π/2 radians) around the Z-axis
    SELECT ST_RotateZ(ST_Point(1, 0), pi()/2);
    -- POINT (0 1)
