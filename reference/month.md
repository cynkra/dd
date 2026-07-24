# DuckDB function month

Extract the month component from a date or timestamp.

## Usage

``` r
month(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    month(timestamp '2021-08-03 11:59:44.123456')
