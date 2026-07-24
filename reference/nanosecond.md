# DuckDB function nanosecond

Extract the nanosecond component from a date or timestamp.

## Usage

``` r
nanosecond(tsns)
```

## Arguments

- tsns:

  `DATE | TIMESTAMP | INTERVAL | TIME | TIME_NS | TIME WITH TIME ZONE | TIMESTAMP_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    nanosecond(timestamp_ns '2021-08-03 11:59:44.123456789')
