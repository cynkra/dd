# DuckDB function ST_ConcaveHull

Returns the 'concave' hull of the input geometry, containing all of the
source input's points, and which can be used to create polygons from
points. The ratio parameter dictates the level of concavity; 1.0 returns
the convex hull; and 0 indicates to return the most concave hull
possible. Set allowHoles to a non-zero value to allow output containing
holes.

## Usage

``` r
ST_ConcaveHull(geom, ratio, allowHoles)
```

## Arguments

- geom:

  `GEOMETRY`

- ratio:

  `DOUBLE`

- allowHoles:

  `BOOLEAN`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
