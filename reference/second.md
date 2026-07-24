# DuckDB function second

Extract the second component from a date or timestamp.

## Usage

``` r
second(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    second(timestamp '2021-08-03 11:59:44.123456')
