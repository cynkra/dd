# DuckDB function date_sub

The number of complete partitions between the timestamps.

## Usage

``` r
date_sub(part, startdate, enddate)
```

## Arguments

- part:

  `VARCHAR`

- startdate:

  `DATE | TIME | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

- enddate:

  `DATE | TIME | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## SQL examples

    date_sub('hour', TIMESTAMPTZ '1992-09-30 23:59:59', TIMESTAMPTZ '1992-10-01 01:58:00')
