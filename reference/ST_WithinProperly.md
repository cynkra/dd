# DuckDB function ST_WithinProperly

Returns true if the first geometry \\properly\\ is contained by the
second geometry

This function functions the same as `ST_ContainsProperly`, but the
arguments are swapped.

## Usage

``` r
ST_WithinProperly(geom1, geom2)
```

## Arguments

- geom1, geom2:

  `GEOMETRY`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).
