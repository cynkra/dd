# DuckDB function epoch_ns

Extract the epoch component in nanoseconds from a temporal type.

## Arguments

- temporal:

  `DATE | TIMESTAMP | INTERVAL | TIME | TIME_NS | TIME WITH TIME ZONE | TIMESTAMP WITH TIME ZONE | TIMESTAMP_NS`

## Value

`BIGINT`

## Overloads

- `epoch_ns(temporal = DATE)`

- `epoch_ns(temporal = TIMESTAMP)`

- `epoch_ns(temporal = INTERVAL)`

- `epoch_ns(temporal = TIME)`

- `epoch_ns(temporal = TIME_NS)`

- `` epoch_ns(temporal = `TIME WITH TIME ZONE`) ``

- `` epoch_ns(temporal = `TIMESTAMP WITH TIME ZONE`) ``

- `epoch_ns(temporal = TIMESTAMP_NS)`

## SQL examples

    epoch_ns(timestamp '2021-08-03 11:59:44.123456')
