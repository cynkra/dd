# DuckDB function week

Extract the week component from a date or timestamp.

## Usage

``` r
week(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    week(timestamp '2021-08-03 11:59:44.123456')
