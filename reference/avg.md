# DuckDB function avg

Calculates the average value for all tuples in x.

## Arguments

- x:

  `DECIMAL | SMALLINT | INTEGER | BIGINT | HUGEINT | INTERVAL | DOUBLE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | TIME | TIME WITH TIME ZONE`

## Value

`DECIMAL | DOUBLE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE | TIME | TIME WITH TIME ZONE`

## Overloads

- `avg(x = DECIMAL)`

- `avg(x = SMALLINT)`

- `avg(x = INTEGER)`

- `avg(x = BIGINT)`

- `avg(x = HUGEINT)`

- `avg(x = INTERVAL)`

- `avg(x = DOUBLE)`

- `avg(x = TIMESTAMP)`

- `` avg(x = `TIMESTAMP WITH TIME ZONE`) ``

- `avg(x = TIME)`

- `` avg(x = `TIME WITH TIME ZONE`) ``

## SQL examples

    SUM(x) / COUNT(*)
