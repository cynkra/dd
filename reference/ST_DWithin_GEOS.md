# DuckDB function ST_DWithin_GEOS

Returns true if two geometries are within a target distance of
each-other.

## Usage

``` r
ST_DWithin_GEOS(geom1, geom2, distance)
```

## Arguments

- geom1:

  `GEOMETRY`

- geom2:

  `GEOMETRY`

- distance:

  `DOUBLE`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).
