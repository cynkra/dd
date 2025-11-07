# DuckDB function datetrunc

Truncate to specified precision.

## Arguments

- part:

  `VARCHAR`

- timestamp:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`TIMESTAMP | INTERVAL | TIMESTAMP WITH TIME ZONE`

## Overloads

- `datetrunc(part = VARCHAR, timestamp = DATE)`

- `datetrunc(part = VARCHAR, timestamp = INTERVAL)`

- `datetrunc(part = VARCHAR, timestamp = TIMESTAMP)`

- `` datetrunc(part = VARCHAR, timestamp = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    datetrunc('hour', TIMESTAMPTZ '1992-09-20 20:38:40')
