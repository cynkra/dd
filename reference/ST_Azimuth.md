# DuckDB function ST_Azimuth

Returns the azimuth (a clockwise angle measured from north) of two
points in radian.

## Usage

``` r
ST_Azimuth(origin, target)
```

## Arguments

- origin, target:

  `GEOMETRY | POINT_2D`

## Value

`DOUBLE`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT degrees(ST_Azimuth(ST_Point(0, 0), ST_Point(0, 1)));
    -- 90.0
