# DuckDB function epoch

Extract the epoch component from a temporal type.

## Arguments

- temporal:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`DOUBLE`

## Overloads

- `epoch(temporal = DATE)`

- `epoch(temporal = INTERVAL)`

- `epoch(temporal = TIME)`

- `epoch(temporal = TIMESTAMP)`

- `` epoch(temporal = `TIME WITH TIME ZONE`) ``

- `epoch(temporal = TIME_NS)`

- `` epoch(temporal = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    epoch(timestamp '2021-08-03 11:59:44.123456')
