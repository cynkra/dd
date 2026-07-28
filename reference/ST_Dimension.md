# DuckDB function ST_Dimension

Returns the "topological dimension" of a geometry.

- For POINT and MULTIPOINT geometries, returns `0`

- For LINESTRING and MULTILINESTRING, returns `1`

- For POLYGON and MULTIPOLYGON, returns `2`

- For GEOMETRYCOLLECTION, returns the maximum dimension of the contained
  geometries, or 0 if the collection is empty.

## Usage

``` r
ST_Dimension(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`INTEGER`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Dimension('POLYGON((0 0, 0 1, 1 1, 1 0, 0 0))'::GEOMETRY);
    -- 2
