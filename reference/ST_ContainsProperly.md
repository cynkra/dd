# DuckDB function ST_ContainsProperly

Returns true if the first geometry \\properly\\ contains the second
geometry

In contrast to `ST_Contains`, this function does not return true if
`geom2` is contained strictly on the boundary of `geom1`. A geometry
always `ST_Contains` itself, but does not `ST_ContainsProperly` itself.

## Usage

``` r
ST_ContainsProperly(geom1, geom2)
```

## Arguments

- geom1, geom2:

  `GEOMETRY`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).
