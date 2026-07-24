# DuckDB function epoch_ms

Extract the epoch component in milliseconds from a temporal type.

## Usage

``` r
epoch_ms(temporal)
```

## Arguments

- temporal:

  `DATE | TIMESTAMP | INTERVAL | TIME | TIME_NS | TIME WITH TIME ZONE | TIMESTAMP WITH TIME ZONE | BIGINT`

## Value

`BIGINT | TIMESTAMP`

## SQL examples

    epoch_ms(timestamp '2021-08-03 11:59:44.123456')
