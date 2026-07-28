# DuckDB function ST_Hilbert

Encodes the X and Y values as the hilbert curve index for a curve
covering the given bounding box. If a geometry is provided, the center
of the approximate bounding box is used as the point to encode. If no
bounding box is provided, the hilbert curve index is mapped to the full
range of a single-precision float. For the BOX_2D and BOX_2DF variants,
the center of the box is used as the point to encode.

## Usage

``` r
ST_Hilbert(box, bounds)
```

## Arguments

- box, bounds:

  `BOX_2D | BOX_2DF`

## Value

`UINTEGER`

## Overloads

- `ST_Hilbert(x = DOUBLE, y = DOUBLE, bounds = BOX_2D)`

- `ST_Hilbert(geom = GEOMETRY, bounds = BOX_2D)`

- `ST_Hilbert(geom = GEOMETRY)`

- `ST_Hilbert(box = BOX_2D, bounds = BOX_2D)`

- `ST_Hilbert(box = BOX_2DF, bounds = BOX_2DF)`

## Provided by

The `spatial` extension (`LOAD spatial;`).
