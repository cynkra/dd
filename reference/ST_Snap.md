# DuckDB function ST_Snap

Snaps the vertices and segments of a geometry to another geometry's
vertices within the given tolerance.

## Usage

``` r
ST_Snap(geom, snap_to, tolerance)
```

## Arguments

- geom:

  `GEOMETRY`

- snap_to:

  `GEOMETRY`

- tolerance:

  `DOUBLE`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
