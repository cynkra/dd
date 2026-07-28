# DuckDB function ST_Force4D

Forces the vertices of a geometry to have X, Y, Z and M components

The following cases apply:

- If the input geometry has a Z component but no M component, the new M
  value will be added to the vertices of the input geometry.

- If the input geometry has a M component but no Z component, the new Z
  value will be added to the vertices of the input geometry.

- If the input geometry has both a Z component and a M component, the
  geometry will be returned as is.

- Otherwise, if the input geometry has neither a Z or M component, the
  new Z and M values will be added to the vertices of the input
  geometry.

## Usage

``` r
ST_Force4D(geom, z, m)
```

## Arguments

- geom:

  `GEOMETRY`

- z:

  `DOUBLE`

- m:

  `DOUBLE`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
