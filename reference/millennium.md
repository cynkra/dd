# DuckDB function millennium

Extract the millennium component from a date or timestamp.

## Usage

``` r
millennium(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    millennium(timestamp '2021-08-03 11:59:44.123456')
