# DuckDB function ST_StartPoint

Returns the start point of a LINESTRING.

## Usage

``` r
ST_StartPoint(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY | POINT_2D`

## Overloads

- `ST_StartPoint(geom = GEOMETRY)`

- `ST_StartPoint(line = LINESTRING_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
