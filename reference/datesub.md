# DuckDB function datesub

The number of complete partitions between the timestamps.

## Arguments

- part:

  `VARCHAR`

- startdate:

  `DATE | TIME | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

- enddate:

  `DATE | TIME | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `datesub(part = VARCHAR, startdate = DATE, enddate = DATE)`

- `datesub(part = VARCHAR, startdate = TIME, enddate = TIME)`

- `datesub(part = VARCHAR, startdate = TIMESTAMP, enddate = TIMESTAMP)`

- `` datesub(part = VARCHAR, startdate = `TIMESTAMP WITH TIME ZONE`, enddate = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    datesub('hour', TIMESTAMPTZ '1992-09-30 23:59:59', TIMESTAMPTZ '1992-10-01 01:58:00')
