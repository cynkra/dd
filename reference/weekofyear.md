# DuckDB function weekofyear

Extract the weekofyear component from a date or timestamp.

## Usage

``` r
weekofyear(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    weekofyear(timestamp '2021-08-03 11:59:44.123456')
