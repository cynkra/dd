# DuckDB function ST_XMax

Returns the maximum X coordinate of a geometry.

## Usage

``` r
ST_XMax(box)
```

## Arguments

- box:

  `BOX_2D | BOX_2DF`

## Value

`DOUBLE | FLOAT`

## Overloads

- `ST_XMax(geom = GEOMETRY)`

- `ST_XMax(point = POINT_2D)`

- `ST_XMax(line = LINESTRING_2D)`

- `ST_XMax(polygon = POLYGON_2D)`

- `ST_XMax(box = BOX_2D)`

- `ST_XMax(box = BOX_2DF)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_XMax(ST_Point(1, 2))
