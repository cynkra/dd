# DuckDB function julian

Extract the Julian Day number from a date or timestamp.

## Usage

``` r
julian(ts)
```

## Arguments

- ts:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`DOUBLE`

## SQL examples

    julian(timestamp '2006-01-01 12:00')
