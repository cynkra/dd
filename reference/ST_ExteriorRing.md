# DuckDB function ST_ExteriorRing

Returns the exterior ring (shell) of a polygon geometry.

## Usage

``` r
ST_ExteriorRing(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY | LINESTRING_2D`

## Overloads

- `ST_ExteriorRing(geom = GEOMETRY)`

- `ST_ExteriorRing(polygon = POLYGON_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
