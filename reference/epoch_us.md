# DuckDB function epoch_us

Extract the epoch component in microseconds from a temporal type.

## Usage

``` r
epoch_us(temporal)
```

## Arguments

- temporal:

  `DATE | TIMESTAMP | INTERVAL | TIME | TIME_NS | TIME WITH TIME ZONE | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    epoch_us(timestamp '2021-08-03 11:59:44.123456')
