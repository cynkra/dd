# DuckDB function ST_IsRing

Returns true if the geometry is a ring (both ST_IsClosed and
ST_IsSimple).

## Usage

``` r
ST_IsRing(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).
