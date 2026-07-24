# DuckDB function epoch

Extract the epoch component from a temporal type.

## Usage

``` r
epoch(temporal)
```

## Arguments

- temporal:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`DOUBLE`

## SQL examples

    epoch(timestamp '2021-08-03 11:59:44.123456')
