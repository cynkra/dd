# DuckDB function weekday

Extract the weekday component from a date or timestamp.

## Usage

``` r
weekday(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    weekday(timestamp '2021-08-03 11:59:44.123456')
