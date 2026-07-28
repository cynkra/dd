# DuckDB function ST_Polygonize

Returns a polygonized representation of the input geometries.

## Usage

``` r
ST_Polygonize(geometries)
```

## Arguments

- geometries:

  `GEOMETRY[]`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Create a polygon from a closed linestring ring
    SELECT ST_Polygonize([
        ST_GeomFromText('LINESTRING(0 0, 0 10, 10 10, 10 0, 0 0)')
    ]);
    ---
    GEOMETRYCOLLECTION (POLYGON ((0 0, 0 10, 10 10, 10 0, 0 0)))
