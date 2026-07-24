# DuckDB function epoch_ns

Extract the epoch component in nanoseconds from a temporal type.

## Usage

``` r
epoch_ns(temporal)
```

## Arguments

- temporal:

  `DATE | TIMESTAMP | INTERVAL | TIME | TIME_NS | TIME WITH TIME ZONE | TIMESTAMP WITH TIME ZONE | TIMESTAMP_NS`

## Value

`BIGINT`

## SQL examples

    epoch_ns(timestamp '2021-08-03 11:59:44.123456')
