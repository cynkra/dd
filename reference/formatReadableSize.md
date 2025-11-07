# DuckDB function formatReadableSize

Converts `integer` to a human-readable representation using units based
on powers of 2 (KiB, MiB, GiB, etc.).

## Usage

``` r
formatReadableSize(integer = BIGINT)
```

## Arguments

- integer:

  `BIGINT`

## Value

`VARCHAR`

## SQL examples

    formatReadableSize(16_000)
