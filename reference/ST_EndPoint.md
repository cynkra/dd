# DuckDB function ST_EndPoint

Returns the end point of a LINESTRING.

## Usage

``` r
ST_EndPoint(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY | POINT_2D`

## Overloads

- `ST_EndPoint(geom = GEOMETRY)`

- `ST_EndPoint(line = LINESTRING_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
