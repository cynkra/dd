# DuckDB function to_base64

Converts a `blob` to a base64 encoded string.

## Usage

``` r
to_base64(blob = BLOB)
```

## Arguments

- blob:

  `BLOB`

## Value

`VARCHAR`

## SQL examples

    to_base64('A'::BLOB)
