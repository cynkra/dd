# DuckDB function ST_MakeLine

- `` ST_MakeLine(geoms = `GEOMETRY[]`) ``: Create a LINESTRING from a
  list of POINT geometries.

- `ST_MakeLine(start = GEOMETRY, end = GEOMETRY)`: Create a LINESTRING
  from two POINT geometries.

## Usage

``` r
ST_MakeLine(start, end)
```

## Arguments

- start, end:

  `GEOMETRY`

## Value

`GEOMETRY`

## Overloads

- `` ST_MakeLine(geoms = `GEOMETRY[]`) ``

- `ST_MakeLine(start = GEOMETRY, end = GEOMETRY)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_MakeLine([ST_Point(0, 0), ST_Point(1, 1)]);
    -- LINESTRING(0 0, 1 1)
    SELECT ST_MakeLine(ST_Point(0, 0), ST_Point(1, 1));
    -- LINESTRING(0 0, 1 1)
