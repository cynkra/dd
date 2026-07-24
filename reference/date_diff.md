# DuckDB function date_diff

The number of partition boundaries between the timestamps.

## Usage

``` r
date_diff(part, startdate, enddate)
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

    date_diff('hour', TIMESTAMPTZ '1992-09-30 23:59:59', TIMESTAMPTZ '1992-10-01 01:58:00')
