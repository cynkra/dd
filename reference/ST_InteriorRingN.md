# DuckDB function ST_InteriorRingN

Returns the N-th interior ring (hole) of a POLYGON as a LINESTRING.
Indexing is 1-based (n = 1 returns the first interior ring). Returns
NULL if the polygon is empty or has fewer than N interior rings.

## Usage

``` r
ST_InteriorRingN(geom, n)
```

## Arguments

- geom:

  `GEOMETRY`

- n:

  `BIGINT`

## Value

`GEOMETRY | LINESTRING_2D`

## Overloads

- `ST_InteriorRingN(geom = GEOMETRY, n = BIGINT)`

- `ST_InteriorRingN(polygon = POLYGON_2D, n = BIGINT)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_AsText(ST_InteriorRingN(ST_GeomFromText('POLYGON((0 0,10 0,10 10,0 10,0 0),(2 2,4 2,4 4,2 4,2 2))'), 1));
