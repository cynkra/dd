# DuckDB function era

Extract the era component from a date or timestamp.

## Usage

``` r
era(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    era(timestamp '2021-08-03 11:59:44.123456')
