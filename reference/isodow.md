# DuckDB function isodow

Extract the isodow component from a date or timestamp.

## Usage

``` r
isodow(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    isodow(timestamp '2021-08-03 11:59:44.123456')
