# DuckDB function ST_ReadOSM

The `ST_ReadOsm()` table function enables reading compressed
OpenStreetMap data directly from a `.osm.pbf` file.

This function uses multithreading and zero-copy protobuf parsing which
makes it a lot faster than using the
[`ST_Read()`](https://cynkra.github.io/dd/reference/ST_Read.md) OSM
driver, however it only outputs the raw OSM data (Nodes, Ways,
Relations), without constructing any geometries. For simple node
entities (like PoI's) you can trivially construct POINT geometries, but
it is also possible to construct LINESTRING and POLYGON geometries by
manually joining refs and nodes together in SQL, although with available
memory usually being a limiting factor. The `ST_ReadOSM()` function also
provides a "replacement scan" to enable reading from a file directly as
if it were a table. This is just syntax sugar for calling `ST_ReadOSM()`
though. Example:

    SELECT * FROM 'tmp/data/germany.osm.pbf' LIMIT 5;
    ```.

## Usage

``` r
ST_ReadOSM(col0)
```

## Arguments

- col0:

  `VARCHAR`

## Value

Unspecified.

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT *
    FROM ST_ReadOSM('tmp/data/germany.osm.pbf')
    WHERE tags['highway'] != []
    LIMIT 5;
    -- +----------------------+--------+----------------------+---------+--------------------+------------+-----------+------------------------+
    -- |         kind         |   id   |         tags         |  refs   |        lat         |    lon     | ref_roles |       ref_types        |
    -- | enum('node', 'way'…  | int64  | map(varchar, varch…  | int64[] |       double       |   double   | varchar[] | enum('node', 'way', …  |
    -- +----------------------+--------+----------------------+---------+--------------------+------------+-----------+------------------------+
    -- | node                 | 122351 | {bicycle=yes, butt…  |         |         53.5492951 |   9.977553 |           |                        |
    -- | node                 | 122397 | {crossing=no, high…  |         | 53.520990100000006 | 10.0156924 |           |                        |
    -- | node                 | 122493 | {TMC:cid_58:tabcd_…  |         | 53.129614600000004 |  8.1970173 |           |                        |
    -- | node                 | 123566 | {highway=traffic_s…  |         | 54.617268200000005 |  8.9718171 |           |                        |
    -- | node                 | 125801 | {TMC:cid_58:tabcd_…  |         | 53.070685000000005 |  8.7819939 |           |                        |
    -- +----------------------+--------+----------------------+---------+--------------------+------------+-----------+------------------------+
