# DuckDB function ST_Within

Returns true if the first geometry is within the second.

## Usage

``` r
ST_Within(geom1, geom2)
```

## Arguments

- geom1:

  `POINT_2D | GEOMETRY`

- geom2:

  `POLYGON_2D | GEOMETRY`

## Value

`BOOLEAN`

## Provided by

The `spatial` extension (`LOAD spatial;`).
