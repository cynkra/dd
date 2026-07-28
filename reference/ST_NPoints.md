# DuckDB function ST_NPoints

Returns the number of vertices within a geometry.

## Usage

``` r
ST_NPoints(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`UINTEGER | UBIGINT`

## Overloads

- `ST_NPoints(geom = GEOMETRY)`

- `ST_NPoints(point = POINT_2D)`

- `ST_NPoints(linestring = LINESTRING_2D)`

- `ST_NPoints(polygon = POLYGON_2D)`

- `ST_NPoints(box = BOX_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
