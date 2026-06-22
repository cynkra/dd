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
