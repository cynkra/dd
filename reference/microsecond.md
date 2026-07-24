# DuckDB function microsecond

Extract the microsecond component from a date or timestamp.

## Usage

``` r
microsecond(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    microsecond(timestamp '2021-08-03 11:59:44.123456')
