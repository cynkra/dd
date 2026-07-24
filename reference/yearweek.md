# DuckDB function yearweek

Extract the yearweek component from a date or timestamp.

## Usage

``` r
yearweek(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    yearweek(timestamp '2021-08-03 11:59:44.123456')
