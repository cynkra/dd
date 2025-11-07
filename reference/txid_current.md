# DuckDB function txid_current

Returns the current transaction’s ID (a BIGINT). It will assign a new
one if the current transaction does not have one already.

## Usage

``` r
txid_current()
```

## Value

`UBIGINT`

## SQL examples

    txid_current()
