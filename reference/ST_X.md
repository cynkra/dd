# DuckDB function ST_X

Returns the X coordinate of a point geometry.

## Usage

``` r
ST_X(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Overloads

- `ST_X(geom = GEOMETRY)`

- `ST_X(point = POINT_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_X(ST_Point(1, 2))
