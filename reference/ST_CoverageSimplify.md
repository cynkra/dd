# DuckDB function ST_CoverageSimplify

Simplify the edges in a polygonal coverage, preserving the coverange by
ensuring that the there are no seams between the resulting simplified
polygons.

By default, the boundary of the coverage is also simplified, but this
can be controlled with the optional third 'simplify_boundary' parameter.

## Usage

``` r
ST_CoverageSimplify(geoms, tolerance, simplify_boundary)
```

## Arguments

- geoms:

  `GEOMETRY[]`

- tolerance:

  `DOUBLE`

- simplify_boundary:

  `BOOLEAN`

## Value

`GEOMETRY`

## Overloads

- `` ST_CoverageSimplify(geoms = `GEOMETRY[]`, tolerance = DOUBLE, simplify_boundary = BOOLEAN) ``

- `` ST_CoverageSimplify(geoms = `GEOMETRY[]`, tolerance = DOUBLE) ``

## Provided by

The `spatial` extension (`LOAD spatial;`).
