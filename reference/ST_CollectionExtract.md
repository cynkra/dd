# DuckDB function ST_CollectionExtract

Extracts geometries from a GeometryCollection into a typed multi
geometry.

If the input geometry is a GeometryCollection, the function will return
a multi geometry, determined by the `type` parameter.

- if `type` = 1, returns a MultiPoint containing all the Points in the
  collection

- if `type` = 2, returns a MultiLineString containing all the
  LineStrings in the collection

- if `type` = 3, returns a MultiPolygon containing all the Polygons in
  the collection

If no `type` parameters is provided, the function will return a multi
geometry matching the highest "surface dimension" of the contained
geometries. E.g. if the collection contains only Points, a MultiPoint
will be returned. But if the collection contains both Points and
LineStrings, a MultiLineString will be returned. Similarly, if the
collection contains Polygons, a MultiPolygon will be returned. Contained
geometries of a lower surface dimension will be ignored.

If the input geometry contains nested GeometryCollections, their
geometries will be extracted recursively and included into the final
multi geometry as well.

If the input geometry is not a GeometryCollection, the function will
return the input geometry as is.

## Usage

``` r
ST_CollectionExtract(geom, type)
```

## Arguments

- geom:

  `GEOMETRY`

- type:

  `INTEGER`

## Value

`GEOMETRY`

## Overloads

- `ST_CollectionExtract(geom = GEOMETRY, type = INTEGER)`

- `ST_CollectionExtract(geom = GEOMETRY)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_CollectionExtract('MULTIPOINT(1 2, 3 4)'::GEOMETRY, 1);
    -- MULTIPOINT (1 2, 3 4)
