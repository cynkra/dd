# DuckDB function ST_Dump

Dumps a geometry into a list of sub-geometries and their "path" in the
original geometry.

You can use the `unnest(res, recursive := true)` function to explode the
resulting list of structs into multiple rows.

## Usage

``` r
ST_Dump(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`STRUCT(geom GEOMETRY, path INTEGER[])[]`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_Dump('MULTIPOINT(1 2, 3 4)'::GEOMETRY);
    -- [{'geom': 'POINT(1 2)', 'path': [0]}, {'geom': 'POINT(3 4)', 'path': [1]}]
    --
    -- SELECT unnest(ST_Dump('MULTIPOINT(1 2, 3 4)'::GEOMETRY), recursive := true);
    -- -- +-------------+---------+
    -- -- |    geom     |  path   |
    -- -- |  geometry   | int32[] |
    -- -- +-------------+---------+
    -- -- | POINT (1 2) | [1]     |
    -- -- | POINT (3 4) | [2]     |
    -- -- +-------------+---------+
