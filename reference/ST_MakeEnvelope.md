# DuckDB function ST_MakeEnvelope

Create a rectangular polygon from min/max coordinates.

## Usage

``` r
ST_MakeEnvelope(min_x, min_y, max_x, max_y)
```

## Arguments

- min_x, min_y, max_x, max_y:

  `DOUBLE`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
