# DuckDB function ST_MMin

Returns the minimum M coordinate of a geometry.

## Usage

``` r
ST_MMin(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_MMin(ST_Point(1, 2, 3, 4))
