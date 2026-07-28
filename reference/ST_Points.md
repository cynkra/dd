# DuckDB function ST_Points

Collects all the vertices in the geometry into a MULTIPOINT.

## Usage

``` r
ST_Points(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Points('LINESTRING(1 1, 2 2)'::GEOMETRY);
    -- MULTIPOINT (1 1, 2 2)
    --
    -- SELECT ST_Points('MULTIPOLYGON Z EMPTY'::GEOMETRY);
    -- MULTIPOINT Z EMPTY
