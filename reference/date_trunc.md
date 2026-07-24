# DuckDB function date_trunc

Truncate to specified precision.

## Usage

``` r
date_trunc(part, timestamp)
```

## Arguments

- part:

  `VARCHAR`

- timestamp:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`TIMESTAMP | INTERVAL | TIMESTAMP WITH TIME ZONE`

## SQL examples

    date_trunc('hour', TIMESTAMPTZ '1992-09-20 20:38:40')
