# DuckDB function mad

Returns the median absolute deviation for the values within x. NULL
values are ignored. Temporal types return a positive INTERVAL. .

## Arguments

- x:

  `DECIMAL | FLOAT | DOUBLE | DATE | TIMESTAMP | TIME | TIMESTAMP WITH TIME ZONE | TIME WITH TIME ZONE`

## Value

`DECIMAL | FLOAT | DOUBLE | INTERVAL`

## Overloads

- `mad(x = DECIMAL)`

- `mad(x = FLOAT)`

- `mad(x = DOUBLE)`

- `mad(x = DATE)`

- `mad(x = TIMESTAMP)`

- `mad(x = TIME)`

- `` mad(x = `TIMESTAMP WITH TIME ZONE`) ``

- `` mad(x = `TIME WITH TIME ZONE`) ``

## SQL examples

    mad(x)
