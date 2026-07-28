# DuckDB function quack_uri_parser

DuckDB function `quack_uri_parser()`.

## Usage

``` r
quack_uri_parser(col0, col1)
```

## Arguments

- col0:

  `VARCHAR`

- col1:

  `BOOLEAN`

## Value

`STRUCT(host VARCHAR, port USMALLINT, ipv6 BOOLEAN, ssl BOOLEAN, url VARCHAR)`

## Provided by

The `quack` extension (`LOAD quack;`).
