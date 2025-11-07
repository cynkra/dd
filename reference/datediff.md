# DuckDB function datediff

The number of partition boundaries between the timestamps.

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

- `datediff(part = VARCHAR, startdate = DATE, enddate = DATE)`

- `datediff(part = VARCHAR, startdate = TIME, enddate = TIME)`

- `datediff(part = VARCHAR, startdate = TIMESTAMP, enddate = TIMESTAMP)`

- `` datediff(part = VARCHAR, startdate = `TIMESTAMP WITH TIME ZONE`, enddate = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    datediff('hour', TIMESTAMPTZ '1992-09-30 23:59:59', TIMESTAMPTZ '1992-10-01 01:58:00')
