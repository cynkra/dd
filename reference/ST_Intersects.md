# DuckDB function ST_Intersects

Returns true if the geometries intersect.

## Usage

``` r
ST_Intersects(box1, box2)
```

## Arguments

- box1, box2:

  `BOX_2D`

## Value

`BOOLEAN`

## Overloads

- `ST_Intersects(box1 = BOX_2D, box2 = BOX_2D)`

- `ST_Intersects(geom1 = GEOMETRY, geom2 = GEOMETRY)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
