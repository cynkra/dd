# DuckDB function ST_LineInterpolatePoints

Returns a multi-point interpolated along a line at a fraction of total
2D length.

if repeat is false, the result is a single point, (and equivalent to
ST_LineInterpolatePoint), otherwise, the result is a multi-point with
points repeated at the fraction interval.

## Usage

``` r
ST_LineInterpolatePoints(line, fraction, repeat.)
```

## Arguments

- line:

  `GEOMETRY`

- fraction:

  `DOUBLE`

- repeat.:

  `BOOLEAN`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
