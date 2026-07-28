# DuckDB function ST_FlipCoordinates

Returns a new geometry with the coordinates of the input geometry
"flipped" so that x = y and y = x.

## Usage

``` r
ST_FlipCoordinates(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY | POINT_2D | LINESTRING_2D | POLYGON_2D | BOX_2D`

## Overloads

- `ST_FlipCoordinates(geom = GEOMETRY)`

- `ST_FlipCoordinates(point = POINT_2D)`

- `ST_FlipCoordinates(linestring = LINESTRING_2D)`

- `ST_FlipCoordinates(polygon = POLYGON_2D)`

- `ST_FlipCoordinates(box = BOX_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
