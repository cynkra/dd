# DuckDB function ST_QuadKey

Compute the
[quadkey](https://learn.microsoft.com/en-us/bingmaps/articles/bing-maps-tile-system)
for a given lon/lat point at a given level. Note that the parameter
order is **longitude**, **latitude**.

`level` has to be between 1 and 23, inclusive.

The input coordinates will be clamped to the lon/lat bounds of the earth
(longitude between -180 and 180, latitude between -85.05112878 and
85.05112878).

The geometry overload throws an error if the input geometry is not a
`POINT`.

## Usage

``` r
ST_QuadKey(longitude, latitude, level)
```

## Arguments

- longitude:

  `DOUBLE`

- latitude:

  `DOUBLE`

- level:

  `INTEGER`

## Value

`VARCHAR`

## Overloads

- `ST_QuadKey(longitude = DOUBLE, latitude = DOUBLE, level = INTEGER)`

- `ST_QuadKey(point = GEOMETRY, level = INTEGER)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT ST_QuadKey(ST_Point(11.08, 49.45), 10);
    -- 1333203202
