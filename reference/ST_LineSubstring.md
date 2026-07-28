# DuckDB function ST_LineSubstring

Returns a substring of a line between two fractions of total 2D length.

## Usage

``` r
ST_LineSubstring(line, start_fraction, end_fraction)
```

## Arguments

- line:

  `GEOMETRY`

- start_fraction:

  `DOUBLE`

- end_fraction:

  `DOUBLE`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
