# DuckDB function ST_AsMVTGeom

Transform and clip geometry to a tile boundary

See "ST_AsMVT" for more details.

## Usage

``` r
ST_AsMVTGeom(geom, bounds, extent, buffer, clip_geom)
```

## Arguments

- geom:

  `GEOMETRY`

- bounds:

  `BOX_2D`

- extent:

  `BIGINT`

- buffer:

  `BIGINT`

- clip_geom:

  `BOOLEAN`

## Value

`GEOMETRY`

## Overloads

- `ST_AsMVTGeom(geom = GEOMETRY, bounds = BOX_2D, extent = BIGINT, buffer = BIGINT, clip_geom = BOOLEAN)`

- `ST_AsMVTGeom(geom = GEOMETRY, bounds = BOX_2D, extent = BIGINT, buffer = BIGINT)`

- `ST_AsMVTGeom(geom = GEOMETRY, bounds = BOX_2D, extent = BIGINT)`

- `ST_AsMVTGeom(geom = GEOMETRY, bounds = BOX_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
