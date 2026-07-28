# DuckDB function ST_BuildArea

Creates a polygonal geometry by attempting to "fill in" the input
geometry.

Unlike ST_Polygonize, this function does not fill in holes.

## Usage

``` r
ST_BuildArea(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
