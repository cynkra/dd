# DuckDB function ST_IsEmpty

Returns true if the geometry is "empty".

## Usage

``` r
ST_IsEmpty(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`BOOLEAN`

## Overloads

- `ST_IsEmpty(geom = GEOMETRY)`

- `ST_IsEmpty(linestring = LINESTRING_2D)`

- `ST_IsEmpty(polygon = POLYGON_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
