# DuckDB function ST_Expand

Expand the input geometry by the specified distance, returning a
polygon.

`geom` is the input geometry.

`distance` is the target distance for the expansion, using the same
units as the input geometry.

This is a planar operation and will not take into account the curvature
of the earth.

## Usage

``` r
ST_Expand(geom, distance)
```

## Arguments

- geom:

  `GEOMETRY`

- distance:

  `DOUBLE`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_AsText(ST_Expand(ST_GeomFromText('POINT(20 30)'), 0.1));
