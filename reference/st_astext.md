# DuckDB function st_astext

Returns the Well-Known Text (WKT) representation of the geometry.

## Usage

``` r
st_astext(geom = GEOMETRY)
```

## Arguments

- geom:

  `GEOMETRY`

## Value

`VARCHAR`

## SQL examples

    ST_AsText(ST_GeomFromWKB(X'01010000000000000000000000000000000000000000000000'))
