# DuckDB function dayofyear

Extract the dayofyear component from a date or timestamp.

## Usage

``` r
dayofyear(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    dayofyear(timestamp '2021-08-03 11:59:44.123456')
