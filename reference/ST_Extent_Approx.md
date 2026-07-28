# DuckDB function ST_Extent_Approx

Returns the approximate bounding box of a geometry, if available.

This function is only really used internally, and returns the cached
bounding box of the geometry if it exists. This function may be removed
or renamed in the future.

## Usage

``` r
ST_Extent_Approx(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`BOX_2DF`

## Provided by

The `spatial` extension (`LOAD spatial;`).
