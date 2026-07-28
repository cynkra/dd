# DuckDB function ST_GeomFromText

Deserialize a GEOMETRY from a WKT encoded string.

## Usage

``` r
ST_GeomFromText(wkt, ignore_invalid)
```

## Arguments

- wkt:

  `VARCHAR`

- ignore_invalid:

  `BOOLEAN`

## Value

`GEOMETRY`

## Overloads

- `ST_GeomFromText(wkt = VARCHAR)`

- `ST_GeomFromText(wkt = VARCHAR, ignore_invalid = BOOLEAN)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
