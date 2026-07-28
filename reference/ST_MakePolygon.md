# DuckDB function ST_MakePolygon

- `ST_MakePolygon(shell = GEOMETRY)`: Create a POLYGON from a LINESTRING
  shell.

- `` ST_MakePolygon(shell = GEOMETRY, holes = `GEOMETRY[]`) ``: Create a
  POLYGON from a LINESTRING shell and a list of LINESTRING holes.

## Usage

``` r
ST_MakePolygon(shell, holes)
```

## Arguments

- shell:

  `GEOMETRY`

- holes:

  `GEOMETRY[]`

## Value

`GEOMETRY`

## Overloads

- `ST_MakePolygon(shell = GEOMETRY)`

- `` ST_MakePolygon(shell = GEOMETRY, holes = `GEOMETRY[]`) ``

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_MakePolygon(ST_LineString([ST_Point(0, 0), ST_Point(1, 0), ST_Point(1, 1), ST_Point(0, 0)]));
    SELECT ST_MakePolygon(ST_LineString([ST_Point(0, 0), ST_Point(1, 0), ST_Point(1, 1), ST_Point(0, 0)]), [ST_LineString([ST_Point(0.25, 0.25), ST_Point(0.75, 0.25), ST_Point(0.75, 0.75), ST_Point(0.25, 0.25)])]);
