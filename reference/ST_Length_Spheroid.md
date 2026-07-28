# DuckDB function ST_Length_Spheroid

Returns the length of the input geometry in meters, using an ellipsoidal
model of the earth

The input geometry is assumed to be in the
[EPSG:4326](https://en.wikipedia.org/wiki/World_Geodetic_System)
coordinate system (WGS84), with \[latitude, longitude\] axis order and
the length is returned in meters. This function uses the
[GeographicLib](https://geographiclib.sourceforge.io/) library,
calculating the length using an ellipsoidal model of the earth. This is
a highly accurate method for calculating the length of a line geometry
taking the curvature of the earth into account, but is also the slowest.

Returns `0.0` for any geometry that is not a `LINESTRING`,
`MULTILINESTRING` or `GEOMETRYCOLLECTION` containing line geometries.

## Usage

``` r
ST_Length_Spheroid(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Overloads

- `ST_Length_Spheroid(geom = GEOMETRY)`

- `ST_Length_Spheroid(line = LINESTRING_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
