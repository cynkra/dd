# DuckDB function &&

Returns true if the geometries bounding boxes intersect.

## Arguments

- geom1:

  `GEOMETRY | T[]`

- geom2:

  `GEOMETRY | T[]`

## Value

`BOOLEAN`

## Overloads

- `` `&&`(geom1 = GEOMETRY, geom2 = GEOMETRY) ``

- `` `&&`(geom1 = `T[]`, geom2 = `T[]`) ``

## SQL examples

    'POINT(5 5)'::GEOMETRY && 'LINESTRING(0 0, 10 20)'::GEOMETRY;
