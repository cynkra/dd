# DuckDB function ST_LineMerge

"Merges" the input line geometry, optionally taking direction into
account.

## Usage

``` r
ST_LineMerge(geom, preserve_direction)
```

## Arguments

- geom:

  `GEOMETRY`

- preserve_direction:

  `BOOLEAN`

## Value

`GEOMETRY`

## Overloads

- `ST_LineMerge(geom = GEOMETRY)`

- `ST_LineMerge(geom = GEOMETRY, preserve_direction = BOOLEAN)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
