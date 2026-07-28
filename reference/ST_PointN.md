# DuckDB function ST_PointN

Returns the n'th vertex from the input geometry as a point geometry.

## Usage

``` r
ST_PointN(geom, index)
```

## Arguments

- geom:

  `GEOMETRY`

- index:

  `INTEGER`

## Value

`GEOMETRY | POINT_2D`

## Overloads

- `ST_PointN(geom = GEOMETRY, index = INTEGER)`

- `ST_PointN(linestring = LINESTRING_2D, index = INTEGER)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
