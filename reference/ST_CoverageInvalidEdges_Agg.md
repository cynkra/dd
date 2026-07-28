# DuckDB function ST_CoverageInvalidEdges_Agg

Returns the invalid edges of a coverage geometry.

## Usage

``` r
ST_CoverageInvalidEdges_Agg(col0, col1)
```

## Arguments

- col0:

  `GEOMETRY`

- col1:

  `DOUBLE`

## Value

`GEOMETRY`

## Overloads

- `ST_CoverageInvalidEdges_Agg(col0 = GEOMETRY)`

- `ST_CoverageInvalidEdges_Agg(col0 = GEOMETRY, col1 = DOUBLE)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
