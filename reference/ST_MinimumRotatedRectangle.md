# DuckDB function ST_MinimumRotatedRectangle

Returns the minimum rotated rectangle that bounds the input geometry,
finding the surrounding box that has the lowest area by using a rotated
rectangle, rather than taking the lowest and highest coordinate values
as per ST_Envelope().

## Usage

``` r
ST_MinimumRotatedRectangle(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`GEOMETRY`

## Provided by

The `spatial` extension (`LOAD spatial;`).
