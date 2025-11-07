# DuckDB function mean

Calculates the average value for all tuples in x.

## Arguments

- x:

  `DECIMAL | SMALLINT | INTEGER | BIGINT | HUGEINT | INTERVAL | DOUBLE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | TIME | TIME WITH TIME ZONE`

## Value

`DECIMAL | DOUBLE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE | TIME | TIME WITH TIME ZONE`

## Overloads

- `mean(x = DECIMAL)`

- `mean(x = SMALLINT)`

- `mean(x = INTEGER)`

- `mean(x = BIGINT)`

- `mean(x = HUGEINT)`

- `mean(x = INTERVAL)`

- `mean(x = DOUBLE)`

- `mean(x = TIMESTAMP)`

- `` mean(x = `TIMESTAMP WITH TIME ZONE`) ``

- `mean(x = TIME)`

- `` mean(x = `TIME WITH TIME ZONE`) ``

## SQL examples

    SUM(x) / COUNT(*)
