# DuckDB function date_diff

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

- `date_diff(part = VARCHAR, startdate = DATE, enddate = DATE)`

- `date_diff(part = VARCHAR, startdate = TIME, enddate = TIME)`

- `date_diff(part = VARCHAR, startdate = TIMESTAMP, enddate = TIMESTAMP)`

- `` date_diff(part = VARCHAR, startdate = `TIMESTAMP WITH TIME ZONE`, enddate = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    date_diff('hour', TIMESTAMPTZ '1992-09-30 23:59:59', TIMESTAMPTZ '1992-10-01 01:58:00')
