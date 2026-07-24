# DuckDB function dayofweek

Extract the dayofweek component from a date or timestamp.

## Usage

``` r
dayofweek(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    dayofweek(timestamp '2021-08-03 11:59:44.123456')
