# DuckDB function century

Extract the century component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `century(ts = DATE)`

- `century(ts = INTERVAL)`

- `century(ts = TIMESTAMP)`

- `` century(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    century(timestamp '2021-08-03 11:59:44.123456')
