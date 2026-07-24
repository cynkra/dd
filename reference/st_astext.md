# DuckDB function st_astext

Returns the Well-Known Text (WKT) representation of the geometry.

## Usage

``` r
st_astext(geom)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`VARCHAR`

## SQL examples

    ST_AsText(ST_GeomFromWKB(X'01010000000000000000000000000000000000000000000000'))

## See also

Other geometry:
[`st_aswkb()`](https://cynkra.github.io/dd/reference/st_aswkb.md),
[`st_crs()`](https://cynkra.github.io/dd/reference/st_crs.md),
[`st_geomfromwkb()`](https://cynkra.github.io/dd/reference/st_geomfromwkb.md)
