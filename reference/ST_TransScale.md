# DuckDB function ST_TransScale

Translates and then scales a geometry in X and Y direction. This is a
shorthand macro for calling ST_Affine.

## Usage

``` r
ST_TransScale(geom, dx, dy, xs, ys)
```

## Arguments

- geom, dx, dy, xs, ys:

  Unspecified.

## Value

Unspecified.

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Translate by (1, 2) then scale by (2, 3)
    SELECT ST_TransScale(ST_Point(1, 1), 1, 2, 2, 3);
    -- POINT (4 9)
