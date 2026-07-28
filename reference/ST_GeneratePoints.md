# DuckDB function ST_GeneratePoints

Generates a set of random points within the specified bounding box.

Takes a bounding box (min_x, min_y, max_x, max_y), a count of points to
generate, and optionally a seed for the random number generator.

## Usage

``` r
ST_GeneratePoints(col0, col1, col2)
```

## Arguments

- col0:

  `BOX_2D`

- col1:

  `BIGINT`

- col2:

  `BIGINT`

## Value

Unspecified.

## Overloads

- `ST_GeneratePoints(col0 = BOX_2D, col1 = BIGINT)`

- `ST_GeneratePoints(col0 = BOX_2D, col1 = BIGINT, col2 = BIGINT)`

## Provided by

The `spatial` extension (`LOAD spatial;`).

## SQL examples

    SELECT * FROM ST_GeneratePoints({min_x: 0, min_y:0, max_x:10, max_y:10}::BOX_2D, 5, 42);
