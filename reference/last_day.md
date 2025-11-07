# DuckDB function last_day

Returns the last day of the month.

## Arguments

- ts:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`DATE`

## Overloads

- `last_day(ts = DATE)`

- `last_day(ts = TIMESTAMP)`

- `` last_day(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    last_day(TIMESTAMP '1992-03-22 01:02:03.1234')
