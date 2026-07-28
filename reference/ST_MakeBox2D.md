# DuckDB function ST_MakeBox2D

Create a BOX2D from two POINT geometries.

## Usage

``` r
ST_MakeBox2D(point1, point2)
```

## Arguments

- point1, point2:

  `GEOMETRY`

## Value

`BOX_2D`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_MakeBox2D(ST_Point(0, 0), ST_Point(1, 1));
    -- BOX(0 0, 1 1)
