# DuckDB function formatReadableDecimalSize

Converts `integer` to a human-readable representation using units based
on powers of 10 (KB, MB, GB, etc.).

## Usage

``` r
formatReadableDecimalSize(integer = BIGINT)
```

## Arguments

- integer:

  `BIGINT`

## Value

`VARCHAR`

## SQL examples

    formatReadableDecimalSize(16_000)
