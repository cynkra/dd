# DuckDB function ST_NumPoints

Returns the number of vertices within a geometry.

## Usage

``` r
ST_NumPoints(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`UINTEGER | UBIGINT`

## Overloads

- `ST_NumPoints(geom = GEOMETRY)`

- `ST_NumPoints(point = POINT_2D)`

- `ST_NumPoints(linestring = LINESTRING_2D)`

- `ST_NumPoints(polygon = POLYGON_2D)`

- `ST_NumPoints(box = BOX_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
