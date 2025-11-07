# DuckDB function datepart

Get subfield (equivalent to extract).

## Arguments

- ts:

  `VARCHAR[] | VARCHAR`

- col1:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`STRUCT() | BIGINT`

## Overloads

- `` datepart(ts = `VARCHAR[]`, col1 = DATE) ``

- `` datepart(ts = `VARCHAR[]`, col1 = INTERVAL) ``

- `` datepart(ts = `VARCHAR[]`, col1 = TIME) ``

- `` datepart(ts = `VARCHAR[]`, col1 = TIMESTAMP) ``

- `` datepart(ts = `VARCHAR[]`, col1 = `TIME WITH TIME ZONE`) ``

- `` datepart(ts = `VARCHAR[]`, col1 = TIME_NS) ``

- `datepart(ts = VARCHAR, col1 = DATE)`

- `datepart(ts = VARCHAR, col1 = INTERVAL)`

- `datepart(ts = VARCHAR, col1 = TIME)`

- `datepart(ts = VARCHAR, col1 = TIMESTAMP)`

- `` datepart(ts = VARCHAR, col1 = `TIME WITH TIME ZONE`) ``

- `datepart(ts = VARCHAR, col1 = TIME_NS)`

- `` datepart(ts = `VARCHAR[]`, col1 = `TIMESTAMP WITH TIME ZONE`) ``

- `` datepart(ts = VARCHAR, col1 = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    datepart('minute', TIMESTAMP '1992-09-20 20:38:40')
