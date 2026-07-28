# DuckDB function ST_GeomFromGeoJSON

Deserializes a GEOMETRY from a GeoJSON fragment.

## Usage

``` r
ST_GeomFromGeoJSON(geojson)
```

## Arguments

- geojson:

  `JSON | VARCHAR`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_GeomFromGeoJSON('{"type": "Point", "coordinates": [1.0, 2.0]}');
    -- POINT (1 2)
