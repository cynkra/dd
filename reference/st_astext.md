# DuckDB function st_astext

- `st_astext(geom = GEOMETRY)`: Returns the Well-Known Text (WKT)
  representation of the geometry.

- `st_astext(point = POINT_2D)`,
  `st_astext(linestring = LINESTRING_2D)`,
  `st_astext(polygon = POLYGON_2D)`, `st_astext(box = BOX_2D)`: Returns
  the geometry as a WKT string.

## Usage

``` r
st_astext(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`VARCHAR`

## Overloads

- `st_astext(geom = GEOMETRY)`

- `st_astext(point = POINT_2D)`

- `st_astext(linestring = LINESTRING_2D)`

- `st_astext(polygon = POLYGON_2D)`

- `st_astext(box = BOX_2D)`

## Provided by

- `st_astext(geom = GEOMETRY)`: built in

- `st_astext(point = POINT_2D)`: `spatial`

- `st_astext(linestring = LINESTRING_2D)`: `spatial`

- `st_astext(polygon = POLYGON_2D)`: `spatial`

- `st_astext(box = BOX_2D)`: `spatial`

## SQL examples

    ST_AsText(ST_GeomFromWKB(X'01010000000000000000000000000000000000000000000000'))
    SELECT ST_MakeEnvelope(0, 0, 1, 1);
    -- POLYGON ((0 0, 0 1, 1 1, 1 0, 0 0))

## See also

Other geometry:
[`st_aswkb()`](https://cynkra.github.io/dd/reference/st_aswkb.md),
[`st_crs()`](https://cynkra.github.io/dd/reference/st_crs.md),
[`st_geomfromwkb()`](https://cynkra.github.io/dd/reference/st_geomfromwkb.md)
