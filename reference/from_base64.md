# DuckDB function from_base64

Converts a base64 encoded `string` to a character string (`BLOB`).

## Usage

``` r
from_base64(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`BLOB`

## SQL examples

    from_base64('QQ==')
