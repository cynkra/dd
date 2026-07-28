# DuckDB function ST_Contains

Returns true if the first geometry contains the second geometry

In contrast to `ST_ContainsProperly`, this function will also return
true if `geom2` is contained strictly on the boundary of `geom1`. A
geometry always `ST_Contains` itself, but does not `ST_ContainsProperly`
itself.

## Usage

``` r
ST_Contains(geom1, geom2)
```

## Arguments

- geom1:

  `POLYGON_2D | GEOMETRY`

- geom2:

  `POINT_2D | GEOMETRY`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).
