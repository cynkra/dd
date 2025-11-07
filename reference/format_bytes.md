# DuckDB function format_bytes

Converts `integer` to a human-readable representation using units based
on powers of 2 (KiB, MiB, GiB, etc.).

## Usage

``` r
format_bytes(integer = BIGINT)
```

## Arguments

- integer:

  `BIGINT`

## Value

`VARCHAR`

## SQL examples

    format_bytes(16_000)
