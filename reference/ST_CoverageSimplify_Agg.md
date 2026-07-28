# DuckDB function ST_CoverageSimplify_Agg

Simplifies a set of geometries while maintaining coverage.

## Usage

``` r
ST_CoverageSimplify_Agg(col0, col1, col2)
```

## Arguments

- col0:

  `GEOMETRY`

- col1:

  `DOUBLE`

- col2:

  `BOOLEAN`

## Value

`GEOMETRY`

## Overloads

- `ST_CoverageSimplify_Agg(col0 = GEOMETRY, col1 = DOUBLE)`

- `ST_CoverageSimplify_Agg(col0 = GEOMETRY, col1 = DOUBLE, col2 = BOOLEAN)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
