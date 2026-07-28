# DuckDB function ST_Force2D

Forces the vertices of a geometry to have X and Y components

This function will drop any Z and M values from the input geometry, if
present. If the input geometry is already 2D, it will be returned as is.

## Usage

``` r
ST_Force2D(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
