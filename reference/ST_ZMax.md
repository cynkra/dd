# DuckDB function ST_ZMax

Returns the maximum Z coordinate of a geometry.

## Usage

``` r
ST_ZMax(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_ZMax(ST_Point(1, 2, 3))
