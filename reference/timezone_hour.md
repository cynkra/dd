# DuckDB function timezone_hour

Extract the timezone_hour component from a date or timestamp.

## Usage

``` r
timezone_hour(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    timezone_hour(timestamp '2021-08-03 11:59:44.123456')
