# DuckDB function ST_MMax

Returns the maximum M coordinate of a geometry.

## Usage

``` r
ST_MMax(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_MMax(ST_Point(1, 2, 3, 4))
