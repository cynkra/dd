# DuckDB function ST_Centroid

Returns the centroid of a geometry.

## Usage

``` r
ST_Centroid(box)
```

## Arguments

- box:

  `BOX_2D | BOX_2DF`

## Value

`GEOMETRY | POINT_2D`

## Overloads

- `ST_Centroid(geom = GEOMETRY)`

- `ST_Centroid(point = POINT_2D)`

- `ST_Centroid(linestring = LINESTRING_2D)`

- `ST_Centroid(polygon = POLYGON_2D)`

- `ST_Centroid(box = BOX_2D)`

- `ST_Centroid(box = BOX_2DF)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
