# DuckDB function ST_LineLocatePoint

Returns the location on a line closest to a point as a fraction of the
total 2D length of the line.

## Usage

``` r
ST_LineLocatePoint(line, point)
```

## Arguments

- line, point:

  `GEOMETRY`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).
