# DuckDB function ST_AsGeoJSON

Returns the geometry as a GeoJSON fragment

This does not return a complete GeoJSON document, only the geometry
fragment. To construct a complete GeoJSON document or feature, look into
using the DuckDB JSON extension in conjunction with this function. This
function supports geometries with Z values, but not M values. M values
are ignored.

## Usage

``` r
ST_AsGeoJSON(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`JSON`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_AsGeoJSON('POLYGON((0 0, 0 1, 1 1, 1 0, 0 0))'::GEOMETRY);
    -- {"type":"Polygon","coordinates":[[[0.0, 0.0], [0.0, 1.0], [1.0, 1.0], [1.0, 0.0], [0.0, 0.0]]]}
    --
    -- -- Convert a geometry into a full GeoJSON feature (requires the JSON extension to be loaded)
    -- SELECT CAST({
    --     type: 'Feature',
    --     geometry: ST_AsGeoJSON(ST_Point(1, 2)),
    --     properties: {
    --         name: 'my_point'
    --     }
    -- } AS JSON);
    -- {"type":"Feature","geometry":{"type":"Point","coordinates":[1.0, 2.0]},"properties":{"name":"my_point"}}
