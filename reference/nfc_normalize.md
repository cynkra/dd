# DuckDB function nfc_normalize

Converts `string` to Unicode NFC normalized string. Useful for
comparisons and ordering if text data is mixed between NFC normalized
and not.

## Usage

``` r
nfc_normalize(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`VARCHAR`

## SQL examples

    nfc_normalize('ardèch')
