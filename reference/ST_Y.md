# DuckDB function ST_Y

Returns the Y coordinate of a point geometry.

## Usage

``` r
ST_Y(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Overloads

- `ST_Y(geom = GEOMETRY)`

- `ST_Y(point = POINT_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Y(ST_Point(1, 2))
