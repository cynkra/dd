# DuckDB function ST_Force3DZ

Forces the vertices of a geometry to have X, Y and Z components

The following cases apply:

- If the input geometry has a M component but no Z component, the M
  component will be replaced with the new Z value.

- If the input geometry has a Z component but no M component, it will be
  returned as is.

- If the input geometry has both a Z component and a M component, the M
  component will be removed.

- Otherwise, if the input geometry has neither a Z or M component, the
  new Z value will be added to the vertices of the input geometry.

## Usage

``` r
ST_Force3DZ(geom, z)
```

## Arguments

- geom:

  `GEOMETRY`

- z:

  `DOUBLE`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
