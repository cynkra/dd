# DuckDB function ST_YMin

Returns the minimum Y coordinate of a geometry.

## Usage

``` r
ST_YMin(box)
```

## Arguments

- box:

  `BOX_2D | BOX_2DF`

## Value

`DOUBLE | FLOAT`

## Overloads

- `ST_YMin(geom = GEOMETRY)`

- `ST_YMin(point = POINT_2D)`

- `ST_YMin(line = LINESTRING_2D)`

- `ST_YMin(polygon = POLYGON_2D)`

- `ST_YMin(box = BOX_2D)`

- `ST_YMin(box = BOX_2DF)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_YMin(ST_Point(1, 2))
