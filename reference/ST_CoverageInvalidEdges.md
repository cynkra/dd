# DuckDB function ST_CoverageInvalidEdges

Returns the invalid edges in a polygonal coverage, which are edges that
are not shared by two polygons. Returns NULL if the input is not a
polygonal coverage, or if the input is valid. Tolerance is 0 by default.

## Usage

``` r
ST_CoverageInvalidEdges(geoms, tolerance)
```

## Arguments

- geoms:

  `GEOMETRY[]`

- tolerance:

  `DOUBLE`

## Value

`GEOMETRY`

## Overloads

- `` ST_CoverageInvalidEdges(geoms = `GEOMETRY[]`, tolerance = DOUBLE) ``

- `` ST_CoverageInvalidEdges(geoms = `GEOMETRY[]`) ``

## Provided by

The `spatial` extension (`LOAD spatial;`).
