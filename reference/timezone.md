# DuckDB function timezone

Extract the timezone component from a date or timestamp.

## Arguments

- ts:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE | VARCHAR`

- col1:

  `TIME WITH TIME ZONE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BIGINT | TIME WITH TIME ZONE | TIMESTAMP WITH TIME ZONE | TIMESTAMP`

## Overloads

- `timezone(ts = DATE)`

- `timezone(ts = INTERVAL)`

- `` timezone(ts = INTERVAL, col1 = `TIME WITH TIME ZONE`) ``

- `timezone(ts = TIMESTAMP)`

- `` timezone(ts = `TIMESTAMP WITH TIME ZONE`) ``

- `timezone(ts = VARCHAR, col1 = TIMESTAMP)`

- `` timezone(ts = VARCHAR, col1 = `TIMESTAMP WITH TIME ZONE`) ``

- `` timezone(ts = VARCHAR, col1 = `TIME WITH TIME ZONE`) ``

## SQL examples

    timezone(timestamp '2021-08-03 11:59:44.123456')
