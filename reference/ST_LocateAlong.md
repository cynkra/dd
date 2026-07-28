# DuckDB function ST_LocateAlong

Returns a point or multi-point, containing the point(s) at the geometry
with the given measure

For a LINESTRING, or MULTILINESTRING, the location is determined by
interpolating between M values For a POINT and MULTIPOINT, the point is
returned if the measure matches the M value of the vertex, otherwise an
empty geometry is returned For a POLYGON, only the exterior ring is
considered, and treated as a LINESTRING

If offset is provided, the resulting point(s) is offset by the given
amount perpendicular to the line direction.

## Usage

``` r
ST_LocateAlong(line, measure, offset)
```

## Arguments

- line:

  `GEOMETRY`

- measure:

  `DOUBLE`

- offset:

  `DOUBLE`

## Value

`GEOMETRY`

## Overloads

- `ST_LocateAlong(line = GEOMETRY, measure = DOUBLE, offset = DOUBLE)`

- `ST_LocateAlong(line = GEOMETRY, measure = DOUBLE)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
