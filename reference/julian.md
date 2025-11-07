# DuckDB function julian

Extract the Julian Day number from a date or timestamp.

## Arguments

- ts:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`DOUBLE`

## Overloads

- `julian(ts = DATE)`

- `julian(ts = TIMESTAMP)`

- `` julian(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    julian(timestamp '2006-01-01 12:00')
