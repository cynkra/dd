# DuckDB function ST_LocateBetween

Returns a geometry or geometry collection created by filtering and
interpolating vertices within a range of "M" values

Creates a geometry or geometry collection, containing the parts formed
by vertices that have an "M" value within the "start_measure" and
"end_measure" range

For LINESTRING or MULTILINESTRING, if a line segment would cross either
the upper or lower bound, a vertex is added by interpolating the
coordinates at the "intersection" For a POINT and MULTIPOINT, the point
is added to the collection if its vertex has an "M" value within the
range, otherwise it is skipped For a POLYGON, only the exterior ring is
considered, and treated like a LINESTRING

If offset is provided, the resulting vertices are offset by the given
amount perpendicular to the line direction.

## Usage

``` r
ST_LocateBetween(line, start_measure, end_measure, offset)
```

## Arguments

- line:

  `GEOMETRY`

- start_measure:

  `DOUBLE`

- end_measure:

  `DOUBLE`

- offset:

  `DOUBLE`

## Value

`GEOMETRY`

## Overloads

- `ST_LocateBetween(line = GEOMETRY, start_measure = DOUBLE, end_measure = DOUBLE, offset = DOUBLE)`

- `ST_LocateBetween(line = GEOMETRY, start_measure = DOUBLE, end_measure = DOUBLE)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
