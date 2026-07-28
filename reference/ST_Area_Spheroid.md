# DuckDB function ST_Area_Spheroid

Returns the area of a geometry in meters, using an ellipsoidal model of
the earth

The input geometry is assumed to be in the
[EPSG:4326](https://en.wikipedia.org/wiki/World_Geodetic_System)
coordinate system (WGS84), with \[latitude, longitude\] axis order and
the area is returned in square meters. This function uses the
[GeographicLib](https://geographiclib.sourceforge.io/) library,
calculating the area using an ellipsoidal model of the earth. This is a
highly accurate method for calculating the area of a polygon taking the
curvature of the earth into account, but is also the slowest.

Returns `0.0` for any geometry that is not a `POLYGON`, `MULTIPOLYGON`
or `GEOMETRYCOLLECTION` containing polygon geometries.

## Usage

``` r
ST_Area_Spheroid(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Overloads

- `ST_Area_Spheroid(geom = GEOMETRY)`

- `ST_Area_Spheroid(poly = POLYGON_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
