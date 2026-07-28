# DuckDB function ST_InterpolatePoint

Computes the closest point on a LINESTRING to a given POINT and returns
the interpolated M value of that point.

First argument must be a linestring and must have a M dimension. The
second argument must be a point. Neither argument can be empty.

## Usage

``` r
ST_InterpolatePoint(line, point)
```

## Arguments

- line, point:

  `GEOMETRY`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).
