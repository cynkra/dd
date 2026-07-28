# DuckDB function ST_Perimeter

Returns the length of the perimeter of the geometry.

## Usage

``` r
ST_Perimeter(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`DOUBLE`

## Overloads

- `ST_Perimeter(geom = GEOMETRY)`

- `ST_Perimeter(polygon = POLYGON_2D)`

- `ST_Perimeter(box = BOX_2D)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
