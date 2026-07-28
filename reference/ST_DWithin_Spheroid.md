# DuckDB function ST_DWithin_Spheroid

Returns if two POINT_2D's are within a target distance in meters, using
an ellipsoidal model of the earths surface

The input geometry is assumed to be in the
[EPSG:4326](https://en.wikipedia.org/wiki/World_Geodetic_System)
coordinate system (WGS84), with \[latitude, longitude\] axis order and
the distance is returned in meters. This function uses the
[GeographicLib](https://geographiclib.sourceforge.io/) library to solve
the [inverse geodesic
problem](https://en.wikipedia.org/wiki/Geodesics_on_an_ellipsoid#Solution_of_the_direct_and_inverse_problems),
calculating the distance between two points using an ellipsoidal model
of the earth. This is a highly accurate method for calculating the
distance between two arbitrary points taking the curvature of the earths
surface into account, but is also the slowest.

## Usage

``` r
ST_DWithin_Spheroid(p1, p2, distance)
```

## Arguments

- p1:

  `POINT_2D`

- p2:

  `POINT_2D`

- distance:

  `DOUBLE`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).
