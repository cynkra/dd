# DuckDB function ST_Distance

Returns the planar distance between two geometries.

## Usage

``` r
ST_Distance(point1, point2)
```

## Arguments

- point1, point2:

  `POINT_2D`

## Value

`DOUBLE`

## Overloads

- `ST_Distance(point1 = POINT_2D, point2 = POINT_2D)`

- `ST_Distance(point = POINT_2D, linestring = LINESTRING_2D)`

- `ST_Distance(linestring = LINESTRING_2D, point = POINT_2D)`

- `ST_Distance(geom1 = GEOMETRY, geom2 = GEOMETRY)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Distance('POINT (0 0)'::GEOMETRY, 'POINT (3 4)'::GEOMETRY);
    -- 5.0
    --
    -- -- Z coordinates are ignored
    -- SELECT ST_Distance('POINT Z (0 0 0)'::GEOMETRY, 'POINT Z (3 4 5)'::GEOMETRY);
    -- 5.0
