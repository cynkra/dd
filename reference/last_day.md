# DuckDB function last_day

Returns the last day of the month.

## Usage

``` r
last_day(ts)
```

## Arguments

- ts:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`DATE`

## SQL examples

    last_day(TIMESTAMP '1992-03-22 01:02:03.1234')
