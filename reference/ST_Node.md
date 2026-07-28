# DuckDB function ST_Node

Returns a "noded" MultiLinestring, produced by combining a collection of
input linestrings and adding additional vertices where they intersect.

## Usage

``` r
ST_Node(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Create a noded multilinestring from two intersecting lines
    SELECT ST_Node(
        ST_GeomFromText('MULTILINESTRING((0 0, 2 2), (0 2, 2 0))')
    );
    -- MULTILINESTRING ((0 0, 1 1), (1 1, 2 2), (0 2, 1 1), (1 1, 2 0))
