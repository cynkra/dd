# DuckDB function quarter

Extract the quarter component from a date or timestamp.

## Usage

``` r
quarter(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    quarter(timestamp '2021-08-03 11:59:44.123456')
