# DuckDB function minute

Extract the minute component from a date or timestamp.

## Usage

``` r
minute(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    minute(timestamp '2021-08-03 11:59:44.123456')
