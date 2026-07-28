# DuckDB function ST_Distance_Spheroid

Returns the distance between two geometries in meters using an
ellipsoidal model of the earths surface

The input geometry is assumed to be in the
[EPSG:4326](https://en.wikipedia.org/wiki/World_Geodetic_System)
coordinate system (WGS84), with \[latitude, longitude\] axis order and
the distance limit is expected to be in meters. This function uses the
[GeographicLib](https://geographiclib.sourceforge.io/) library to solve
the [inverse geodesic
problem](https://en.wikipedia.org/wiki/Geodesics_on_an_ellipsoid#Solution_of_the_direct_and_inverse_problems),
calculating the distance between two points using an ellipsoidal model
of the earth. This is a highly accurate method for calculating the
distance between two arbitrary points taking the curvature of the earths
surface into account, but is also the slowest.

## Usage

``` r
ST_Distance_Spheroid(p1, p2)
```

## Arguments

- p1, p2:

  `POINT_2D`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Note: the coordinates are in WGS84 and [latitude, longitude] axis order
    -- Whats the distance between New York and Amsterdam (JFK and AMS airport)?
    SELECT st_distance_spheroid(
    st_point(40.6446, -73.7797),
    st_point(52.3130, 4.7725)
    );
    -- 5863418.7459356235
    -- -- Roughly 5863km!
