# DuckDB function decode

Converts `blob` to `VARCHAR`. Fails if `blob` is not valid UTF-8.

## Usage

``` r
decode(blob = BLOB)
```

## Arguments

- blob:

  `BLOB`

## Value

`VARCHAR`

## SQL examples

    decode('\xC3\xBC'::BLOB)
