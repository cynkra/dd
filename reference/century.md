# DuckDB function century

Extract the century component from a date or timestamp.

## Usage

``` r
century(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    century(timestamp '2021-08-03 11:59:44.123456')
