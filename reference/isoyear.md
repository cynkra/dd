# DuckDB function isoyear

Extract the isoyear component from a date or timestamp.

## Usage

``` r
isoyear(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    isoyear(timestamp '2021-08-03 11:59:44.123456')
