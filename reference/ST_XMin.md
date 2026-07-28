# DuckDB function ST_XMin

Returns the minimum X coordinate of a geometry.

## Usage

``` r
ST_XMin(box)
```

## Arguments

- box:

  `BOX_2D | BOX_2DF`

## Value

`DOUBLE | FLOAT`

## Overloads

- `ST_XMin(geom = GEOMETRY)`

- `ST_XMin(point = POINT_2D)`

- `ST_XMin(line = LINESTRING_2D)`

- `ST_XMin(polygon = POLYGON_2D)`

- `ST_XMin(box = BOX_2D)`

- `ST_XMin(box = BOX_2DF)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_XMin(ST_Point(1, 2))
