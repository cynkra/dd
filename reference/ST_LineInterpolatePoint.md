# DuckDB function ST_LineInterpolatePoint

Returns a point interpolated along a line at a fraction of total 2D
length.

## Usage

``` r
ST_LineInterpolatePoint(line, fraction)
```

## Arguments

- line:

  `GEOMETRY`

- fraction:

  `DOUBLE`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
