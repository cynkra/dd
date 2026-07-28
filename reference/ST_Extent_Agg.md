# DuckDB function ST_Extent_Agg

Computes the minimal-bounding-box polygon containing the set of input
geometries.

## Usage

``` r
ST_Extent_Agg(col0)
```

## Arguments

- col0:

  `GEOMETRY`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Extent_Agg(geom) FROM UNNEST([ST_Point(1,1), ST_Point(5,5)]) AS _(geom);
    -- POLYGON ((1 1, 1 5, 5 5, 5 1, 1 1))
