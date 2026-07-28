# DuckDB function ST_AsHEXWKB

Returns the geometry as a HEXWKB string.

## Usage

``` r
ST_AsHEXWKB(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`VARCHAR`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_AsHexWKB('POLYGON((0 0, 0 1, 1 1, 1 0, 0 0))'::GEOMETRY);
    -- 01030000000100000005000000000000000000000000000...
