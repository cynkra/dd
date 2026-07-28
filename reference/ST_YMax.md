# DuckDB function ST_YMax

Returns the maximum Y coordinate of a geometry.

## Usage

``` r
ST_YMax(box)
```

## Arguments

- box:

  `BOX_2D | BOX_2DF`

## Value

`DOUBLE | FLOAT`

## Overloads

- `ST_YMax(geom = GEOMETRY)`

- `ST_YMax(point = POINT_2D)`

- `ST_YMax(line = LINESTRING_2D)`

- `ST_YMax(polygon = POLYGON_2D)`

- `ST_YMax(box = BOX_2D)`

- `ST_YMax(box = BOX_2DF)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_YMax(ST_Point(1, 2))
