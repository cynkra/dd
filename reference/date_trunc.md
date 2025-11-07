# DuckDB function date_trunc

Truncate to specified precision.

## Arguments

- part:

  `VARCHAR`

- timestamp:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`TIMESTAMP | INTERVAL | TIMESTAMP WITH TIME ZONE`

## Overloads

- `date_trunc(part = VARCHAR, timestamp = DATE)`

- `date_trunc(part = VARCHAR, timestamp = INTERVAL)`

- `date_trunc(part = VARCHAR, timestamp = TIMESTAMP)`

- `` date_trunc(part = VARCHAR, timestamp = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    date_trunc('hour', TIMESTAMPTZ '1992-09-20 20:38:40')
