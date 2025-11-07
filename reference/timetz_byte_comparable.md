# DuckDB function timetz_byte_comparable

Converts a TIME WITH TIME ZONE to an integer sort key.

## Usage

``` r
timetz_byte_comparable(time_tz = `TIME WITH TIME ZONE`)
```

## Arguments

- time_tz:

  `TIME WITH TIME ZONE`

## Value

`UBIGINT`

## SQL examples

    timetz_byte_comparable('18:18:16.21-07:00'::TIMETZ)
