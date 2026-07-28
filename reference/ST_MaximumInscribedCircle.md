# DuckDB function ST_MaximumInscribedCircle

Returns the maximum inscribed circle of the input geometry, optionally
with a tolerance.

By default, the tolerance is computed as `max(width, height) / 1000`.
The return value is a struct with the center of the circle, the nearest
point to the center on the boundary of the geometry, and the radius of
the circle.

## Usage

``` r
ST_MaximumInscribedCircle(geom, tolerance)
```

## Arguments

- geom:

  `GEOMETRY`

- tolerance:

  `DOUBLE`

## Value

`STRUCT(center GEOMETRY, nearest GEOMETRY, radius DOUBLE)`

## Overloads

- `ST_MaximumInscribedCircle(geom = GEOMETRY)`

- `ST_MaximumInscribedCircle(geom = GEOMETRY, tolerance = DOUBLE)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    -- Find the maximum inscribed circle of a square
    SELECT ST_MaximumInscribedCircle(
        ST_GeomFromText('POLYGON((0 0, 10 0, 10 10, 0 10, 0 0))')
    );
    -- {'center': POINT (5 5), 'nearest': POINT (5 0), 'radius': 5.0}
