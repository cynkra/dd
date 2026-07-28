# DuckDB function ST_Area

Compute the area of a geometry.

Returns `0.0` for any geometry that is not a `POLYGON`, `MULTIPOLYGON`
or `GEOMETRYCOLLECTION` containing polygon geometries.

The area is in the same units as the spatial reference system of the
geometry.

The `POINT_2D` and `LINESTRING_2D` overloads of this function always
return `0.0` but are included for completeness.

## Usage

``` r
ST_Area(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Overloads

- `ST_Area(geom = GEOMETRY)`

- `ST_Area(polygon = POLYGON_2D)`

- `ST_Area(linestring = LINESTRING_2D)`

- `ST_Area(point = POINT_2D)`

- `ST_Area(box = BOX_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Area('POLYGON((0 0, 0 1, 1 1, 1 0, 0 0))'::GEOMETRY);
    -- 1.0
