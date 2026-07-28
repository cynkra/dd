# DuckDB function ST_M

Returns the M coordinate of a point geometry.

## Usage

``` r
ST_M(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_M(ST_Point(1, 2, 3, 4))
