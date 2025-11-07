# DuckDB function minute

Extract the minute component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `minute(ts = DATE)`

- `minute(ts = INTERVAL)`

- `minute(ts = TIME)`

- `minute(ts = TIMESTAMP)`

- `` minute(ts = `TIME WITH TIME ZONE`) ``

- `minute(ts = TIME_NS)`

- `` minute(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    minute(timestamp '2021-08-03 11:59:44.123456')
