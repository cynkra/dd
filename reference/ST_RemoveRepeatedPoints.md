# DuckDB function ST_RemoveRepeatedPoints

- `ST_RemoveRepeatedPoints(line = LINESTRING_2D)`,
  `ST_RemoveRepeatedPoints(line = LINESTRING_2D, tolerance = DOUBLE)`:
  Remove repeated points from a LINESTRING.

- `ST_RemoveRepeatedPoints(geom = GEOMETRY)`,
  `ST_RemoveRepeatedPoints(geom = GEOMETRY, tolerance = DOUBLE)`:
  Returns the geometry with repeated points removed.

## Usage

``` r
ST_RemoveRepeatedPoints(line, tolerance)
```

## Arguments

- line:

  `LINESTRING_2D`

- tolerance:

  `DOUBLE`

## Value

`LINESTRING_2D | GEOMETRY`

## Overloads

- `ST_RemoveRepeatedPoints(line = LINESTRING_2D)`

- `ST_RemoveRepeatedPoints(line = LINESTRING_2D, tolerance = DOUBLE)`

- `ST_RemoveRepeatedPoints(geom = GEOMETRY)`

- `ST_RemoveRepeatedPoints(geom = GEOMETRY, tolerance = DOUBLE)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
