# DuckDB function date_part

Get subfield (equivalent to extract).

## Arguments

- ts:

  `VARCHAR[] | VARCHAR`

- col1:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`STRUCT() | BIGINT`

## Overloads

- `` date_part(ts = `VARCHAR[]`, col1 = DATE) ``

- `` date_part(ts = `VARCHAR[]`, col1 = INTERVAL) ``

- `` date_part(ts = `VARCHAR[]`, col1 = TIME) ``

- `` date_part(ts = `VARCHAR[]`, col1 = TIMESTAMP) ``

- `` date_part(ts = `VARCHAR[]`, col1 = `TIME WITH TIME ZONE`) ``

- `` date_part(ts = `VARCHAR[]`, col1 = TIME_NS) ``

- `date_part(ts = VARCHAR, col1 = DATE)`

- `date_part(ts = VARCHAR, col1 = INTERVAL)`

- `date_part(ts = VARCHAR, col1 = TIME)`

- `date_part(ts = VARCHAR, col1 = TIMESTAMP)`

- `` date_part(ts = VARCHAR, col1 = `TIME WITH TIME ZONE`) ``

- `date_part(ts = VARCHAR, col1 = TIME_NS)`

- `` date_part(ts = `VARCHAR[]`, col1 = `TIMESTAMP WITH TIME ZONE`) ``

- `` date_part(ts = VARCHAR, col1 = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    date_part('minute', TIMESTAMP '1992-09-20 20:38:40')
