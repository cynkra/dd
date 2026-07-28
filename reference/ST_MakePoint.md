# DuckDB function ST_MakePoint

- `ST_MakePoint(x = DOUBLE, y = DOUBLE)`: Creates a GEOMETRY point from
  an pair of floating point numbers.

  For geodetic coordinate systems, x is typically the longitude value
  and y is the latitude value.

  Note that ST_Point is equivalent. ST_MakePoint is provided for PostGIS
  compatibility.

- `ST_MakePoint(x = DOUBLE, y = DOUBLE, z = DOUBLE)`: Creates a
  POINT_3D.

- `ST_MakePoint(x = DOUBLE, y = DOUBLE, z = DOUBLE, m = DOUBLE)`:
  Creates a POINT_4D.

## Usage

``` r
ST_MakePoint(x, y, z, m)
```

## Arguments

- x, y, z, m:

  `DOUBLE`

## Value

`POINT_2D | POINT_3D | POINT_4D`

## Overloads

- `ST_MakePoint(x = DOUBLE, y = DOUBLE)`

- `ST_MakePoint(x = DOUBLE, y = DOUBLE, z = DOUBLE)`

- `ST_MakePoint(x = DOUBLE, y = DOUBLE, z = DOUBLE, m = DOUBLE)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_AsText(ST_MakePoint(143.3, -24.2));
    -- POINT (143.3 -24.2)
