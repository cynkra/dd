# DuckDB function url_decode

Decodes a URL from a representation using Percent-Encoding.

## Usage

``` r
url_decode(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`VARCHAR`

## SQL examples

    url_decode('https%3A%2F%2Fduckdb.org%2Fwhy_duckdb%23portable')
