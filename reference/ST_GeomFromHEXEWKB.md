# DuckDB function ST_GeomFromHEXEWKB

Deserialize a GEOMETRY from a HEX(E)WKB encoded string

DuckDB spatial doesn't currently differentiate between `WKB` and `EWKB`,
so `ST_GeomFromHEXWKB` and `ST_GeomFromHEXEWKB` are just aliases of each
other.

## Usage

``` r
ST_GeomFromHEXEWKB(hexwkb)
```

## Arguments

- hexwkb:

  `VARCHAR`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
