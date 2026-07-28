# DuckDB function ST_ZMin

Returns the minimum Z coordinate of a geometry.

## Usage

``` r
ST_ZMin(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_ZMin(ST_Point(1, 2, 3))
