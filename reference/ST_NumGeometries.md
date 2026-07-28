# DuckDB function ST_NumGeometries

Returns the number of component geometries in a collection geometry. If
the input geometry is not a collection, this function returns 0 or 1
depending on if the geometry is empty or not.

## Usage

``` r
ST_NumGeometries(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`INTEGER`

## Provided by

The `spatial` extension (`LOAD spatial;`).
