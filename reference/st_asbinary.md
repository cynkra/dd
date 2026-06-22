# DuckDB function st_asbinary

Returns the Well-Known Binary (WKB) representation of the geometry.

## Usage

``` r
st_asbinary(geom = GEOMETRY)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`BLOB`

## SQL examples

    st_asbinary(ST_GeomFromWKB(X'01010000000000000000000000000000000000000000000000000'))
