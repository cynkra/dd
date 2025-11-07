# DuckDB function url_encode

Encodes a URL to a representation using Percent-Encoding.

## Usage

``` r
url_encode(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`VARCHAR`

## SQL examples

    url_encode('this string has/ special+ characters>')
