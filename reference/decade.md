# DuckDB function decade

Extract the decade component from a date or timestamp.

## Usage

``` r
decade(ts)
```

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    decade(timestamp '2021-08-03 11:59:44.123456')
