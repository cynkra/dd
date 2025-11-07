# DuckDB function base64

Converts a `blob` to a base64 encoded string.

## Usage

``` r
base64(blob = BLOB)
```

## Arguments

- blob:

  `BLOB`

## Value

`VARCHAR`

## SQL examples

    base64('A'::BLOB)
