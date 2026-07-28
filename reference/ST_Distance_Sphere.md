# DuckDB function ST_Distance_Sphere

Returns the haversine (great circle) distance between two geometries.

- Only supports POINT geometries.

- Returns the distance in meters.

- The input is expected to be in WGS84 (EPSG:4326) coordinates, using a
  \[latitude, longitude\] axis order.

## Usage

``` r
ST_Distance_Sphere(geom1, geom2)
```

## Arguments

- geom1, geom2:

  `GEOMETRY`

## Value

`DOUBLE`

## Overloads

- `ST_Distance_Sphere(geom1 = GEOMETRY, geom2 = GEOMETRY)`

- `ST_Distance_Sphere(point1 = POINT_2D, point2 = POINT_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
