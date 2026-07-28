# DuckDB function ST_Transform

Transforms a geometry between two coordinate systems

The source and target coordinate systems can be specified using any
format that the [PROJ library](https://proj.org) supports.

The third optional `always_xy` parameter can be used to force the input
and output geometries to be interpreted as having a \[easting,
northing\] coordinate axis order regardless of what the source and
target coordinate system definition says. This is particularly useful
when transforming to/from the
[WGS84/EPSG:4326](https://en.wikipedia.org/wiki/World_Geodetic_System)
coordinate system (what most people think of when they hear
"longitude"/"latitude" or "GPS coordinates"), which is defined as having
a \[latitude, longitude\] axis order even though \[longitude, latitude\]
is commonly used in practice (e.g. in
[GeoJSON](https://tools.ietf.org/html/rfc7946)). More details available
in the [PROJ
documentation](https://proj.org/en/9.3/faq.html#why-is-the-axis-ordering-in-proj-not-consistent).

DuckDB spatial vendors its own static copy of the PROJ database of
coordinate systems, so if you have your own installation of PROJ on your
system the available coordinate systems may differ to what's available
in other GIS software.

## Usage

``` r
ST_Transform(box, source_crs, target_crs, always_xy)
```

## Arguments

- box:

  `BOX_2D`

- source_crs:

  `VARCHAR`

- target_crs:

  `VARCHAR`

- always_xy:

  `BOOLEAN`

## Value

`BOX_2D | POINT_2D | GEOMETRY`

## Overloads

- `ST_Transform(box = BOX_2D, source_crs = VARCHAR, target_crs = VARCHAR)`

- `ST_Transform(box = BOX_2D, source_crs = VARCHAR, target_crs = VARCHAR, always_xy = BOOLEAN)`

- `ST_Transform(point = POINT_2D, source_crs = VARCHAR, target_crs = VARCHAR)`

- `ST_Transform(point = POINT_2D, source_crs = VARCHAR, target_crs = VARCHAR, always_xy = BOOLEAN)`

- `ST_Transform(geom = GEOMETRY, source_crs = VARCHAR, target_crs = VARCHAR)`

- `ST_Transform(geom = GEOMETRY, source_crs = VARCHAR, target_crs = VARCHAR, always_xy = BOOLEAN)`

- `ST_Transform(geom = GEOMETRY, target_crs = VARCHAR)`

- `ST_Transform(geom = GEOMETRY, target_crs = VARCHAR, always_xy = BOOLEAN)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Transform a geometry from EPSG:4326 to EPSG:3857 (WGS84 to WebMercator)
    -- Note that since WGS84 is defined as having a [latitude, longitude] axis order
    -- we follow the standard and provide the input geometry using that axis order,
    -- but the output will be [easting, northing] because that is what's defined by
    -- WebMercator.

    SELECT
        ST_Transform(
            st_point(52.373123, 4.892360),
            'EPSG:4326',
            'EPSG:3857'
        );
    -- POINT (544615.0239773799 6867874.103539125)
    --
    -- -- Alternatively, let's say we got our input point from e.g. a GeoJSON file,
    -- -- which uses WGS84 but with [longitude, latitude] axis order. We can use the
    -- -- `always_xy` parameter to force the input geometry to be interpreted as having
    -- -- a [northing, easting] axis order instead, even though the source coordinate
    -- -- reference system definition (WGS84) says otherwise.
    --
    -- SELECT
    --     ST_Transform(
    --         -- note the axis order is reversed here
    --         st_point(4.892360, 52.373123),
    --         'EPSG:4326',
    --         'EPSG:3857',
    --         always_xy := true
    --     );
    -- POINT (544615.0239773799 6867874.103539125)
    --
    -- -- Transform a geometry from OSG36 British National Grid EPSG:27700 to EPSG:4326 WGS84
    -- -- Standard transform is often fine for the first few decimal places before being wrong
    -- -- which could result in an error starting at about 10m and possibly much more
    -- SELECT ST_Transform(bng, 'EPSG:27700', 'EPSG:4326', xy := true) AS without_grid_file
    -- FROM (SELECT ST_GeomFromText('POINT( 170370.718 11572.405 )') AS bng);
    -- POINT (-5.202992651563592 49.96007490162923)
    --
    -- -- By using an official NTv2 grid file, we can reduce the error down around the 9th decimal place
    -- -- which in theory is below a millimetre, and in practise unlikely that your coordinates are that precise
    -- -- British National Grid "NTv2 format files" download available here:
    -- -- https://www.ordnancesurvey.co.uk/products/os-net/for-developers
    -- SELECT ST_Transform(bng
    --     , '+proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +units=m +no_defs +nadgrids=/full/path/to/OSTN15-NTv2/OSTN15_NTv2_OSGBtoETRS.gsb +type=crs'
    --     , 'EPSG:4326', xy := true) AS with_grid_file
    -- FROM (SELECT ST_GeomFromText('POINT( 170370.718 11572.405 )') AS bng) t;
    -- POINT (-5.203046090608746 49.96006137018598)
