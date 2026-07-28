# DuckDB function ST_NumInteriorRings

Returns the number of interior rings of a polygon.

## Usage

``` r
ST_NumInteriorRings(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`INTEGER`

## Overloads

- `ST_NumInteriorRings(geom = GEOMETRY)`

- `ST_NumInteriorRings(polygon = POLYGON_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
