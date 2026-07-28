# DuckDB function ST_Z

Returns the Z coordinate of a point geometry.

## Usage

``` r
ST_Z(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Z(ST_Point(1, 2, 3))
