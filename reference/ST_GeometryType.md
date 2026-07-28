# DuckDB function ST_GeometryType

Returns a 'GEOMETRY_TYPE' enum identifying the input geometry type.
Possible enum return types are: `POINT`, `LINESTRING`, `POLYGON`,
`MULTIPOINT`, `MULTILINESTRING`, `MULTIPOLYGON`, and
`GEOMETRYCOLLECTION`.

## Usage

``` r
ST_GeometryType(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`ANY`

## Overloads

- `ST_GeometryType(geom = GEOMETRY)`

- `ST_GeometryType(point = POINT_2D)`

- `ST_GeometryType(linestring = LINESTRING_2D)`

- `ST_GeometryType(polygon = POLYGON_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT DISTINCT ST_GeometryType(ST_GeomFromText('POINT(1 1)'));
    -- POINT
