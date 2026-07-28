# DuckDB function ST_Length

Returns the length of the input line geometry.

## Usage

``` r
ST_Length(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Overloads

- `ST_Length(geom = GEOMETRY)`

- `ST_Length(linestring = LINESTRING_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
