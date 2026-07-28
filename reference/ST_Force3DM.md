# DuckDB function ST_Force3DM

Forces the vertices of a geometry to have X, Y and M components

The following cases apply:

- If the input geometry has a Z component but no M component, the Z
  component will be replaced with the new M value.

- If the input geometry has a M component but no Z component, it will be
  returned as is.

- If the input geometry has both a Z component and a M component, the Z
  component will be removed.

- Otherwise, if the input geometry has neither a Z or M component, the
  new M value will be added to the vertices of the input geometry.

## Usage

``` r
ST_Force3DM(geom, m)
```

## Arguments

- geom:

  `GEOMETRY`

- m:

  `DOUBLE`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
