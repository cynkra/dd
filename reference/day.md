# DuckDB function day

Extract the day component from a date or timestamp.

## Usage

``` r
day(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    day(timestamp '2021-08-03 11:59:44.123456')
