# DuckDB function st_aswkb

Returns the Well-Known Binary (WKB) representation of the geometry.

## Usage

``` r
st_aswkb(geom = GEOMETRY)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`BLOB`

## SQL examples

    st_aswkb(ST_GeomFromWKB(X'01010000000000000000000000000000000000000000000000000'))
