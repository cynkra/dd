# DuckDB function ST_CoverageUnion

Union all geometries in a polygonal coverage into a single geometry.
This may be faster than using `ST_Union`, but may use more memory.

## Usage

``` r
ST_CoverageUnion(geoms)
```

## Arguments

- geoms:

  `GEOMETRY[]`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
