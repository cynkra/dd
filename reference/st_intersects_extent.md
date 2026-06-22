# DuckDB function st_intersects_extent

Returns true if the geometries bounding boxes intersect.

## Usage

``` r
st_intersects_extent(geom1 = GEOMETRY, geom2 = GEOMETRY)
```

## Arguments

- geom1:

  `GEOMETRY`

- geom2:

  `GEOMETRY`

## Value

`BOOLEAN`

## SQL examples

    'POINT(5 5)'::GEOMETRY && 'LINESTRING(0 0, 10 20)'::GEOMETRY;
