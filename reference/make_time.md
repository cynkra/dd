# DuckDB function make_time

The time for the given parts.

## Usage

``` r
make_time(hour = BIGINT, minute = BIGINT, seconds = DOUBLE)
```

## Arguments

- hour:

  `BIGINT`

- minute:

  `BIGINT`

- seconds:

  `DOUBLE`

## Value

`TIME`

## SQL examples

    make_time(13, 34, 27.123456)
