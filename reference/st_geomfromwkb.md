# DuckDB function st_geomfromwkb

Creates a geometry from Well-Known Binary (WKB) representation.

## Usage

``` r
st_geomfromwkb(wkb = BLOB)
```

## Arguments

- wkb:

  `BLOB`

## Value

`GEOMETRY`

## SQL examples

    ST_GeomFromWKB(X'01010000000000000000000000000000000000000000000000')

## See also

Other geometry:
[`st_astext()`](https://cynkra.github.io/dd/reference/st_astext.md),
[`st_aswkb()`](https://cynkra.github.io/dd/reference/st_aswkb.md),
[`st_crs()`](https://cynkra.github.io/dd/reference/st_crs.md)
