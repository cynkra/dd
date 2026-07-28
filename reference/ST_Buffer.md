# DuckDB function ST_Buffer

Returns a buffer around the input geometry at the target distance

`geom` is the input geometry.

`distance` is the target distance for the buffer, using the same units
as the input geometry.

`num_triangles` represents how many triangles that will be produced to
approximate a quarter circle. The larger the number, the smoother the
resulting geometry. The default value is 8.

`cap_style` must be one of "CAP_ROUND", "CAP_FLAT", "CAP_SQUARE". This
parameter is case-insensitive.

`join_style` must be one of "JOIN_ROUND", "JOIN_MITRE", "JOIN_BEVEL".
This parameter is case-insensitive.

`mitre_limit` only applies when `join_style` is "JOIN_MITRE". It is the
ratio of the distance from the corner to the mitre point to the corner
radius. The default value is 1.0.

This is a planar operation and will not take into account the curvature
of the earth.

## Usage

``` r
ST_Buffer(geom, distance, num_triangles, cap_style, join_style, mitre_limit)
```

## Arguments

- geom:

  `GEOMETRY`

- distance:

  `DOUBLE`

- num_triangles:

  `INTEGER`

- cap_style:

  `VARCHAR`

- join_style:

  `VARCHAR`

- mitre_limit:

  `DOUBLE`

## Value

`GEOMETRY`

## Overloads

- `ST_Buffer(geom = GEOMETRY, distance = DOUBLE)`

- `ST_Buffer(geom = GEOMETRY, distance = DOUBLE, num_triangles = INTEGER)`

- `ST_Buffer(geom = GEOMETRY, distance = DOUBLE, num_triangles = INTEGER, cap_style = VARCHAR, join_style = VARCHAR, mitre_limit = DOUBLE)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
