# DuckDB function ST_NInteriorRings

Returns the number of interior rings of a polygon.

## Usage

``` r
ST_NInteriorRings(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`INTEGER`

## Overloads

- `ST_NInteriorRings(geom = GEOMETRY)`

- `ST_NInteriorRings(polygon = POLYGON_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
