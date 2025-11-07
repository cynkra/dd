# DuckDB function hour

Extract the hour component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT`

## Overloads

- `hour(ts = DATE)`

- `hour(ts = INTERVAL)`

- `hour(ts = TIME)`

- `hour(ts = TIMESTAMP)`

- `` hour(ts = `TIME WITH TIME ZONE`) ``

- `hour(ts = TIME_NS)`

- `` hour(ts = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    hour(timestamp '2021-08-03 11:59:44.123456')
