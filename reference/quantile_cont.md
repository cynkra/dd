# DuckDB function quantile_cont

Returns the interpolated quantile number between 0 and 1 . If pos is a
LIST of FLOATs, then the result is a LIST of the corresponding
interpolated quantiles. .

## Arguments

- x:

  `DECIMAL | TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DATE | TIMESTAMP | TIME | TIMESTAMP WITH TIME ZONE | TIME WITH TIME ZONE`

- pos:

  `DOUBLE | DOUBLE[]`

## Value

`DECIMAL | TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DATE | TIMESTAMP | TIME | TIMESTAMP WITH TIME ZONE | TIME WITH TIME ZONE`

## Overloads

- `quantile_cont(x = DECIMAL, pos = DOUBLE)`

- `` quantile_cont(x = DECIMAL, pos = `DOUBLE[]`) ``

- `quantile_cont(x = TINYINT, pos = DOUBLE)`

- `` quantile_cont(x = TINYINT, pos = `DOUBLE[]`) ``

- `quantile_cont(x = SMALLINT, pos = DOUBLE)`

- `` quantile_cont(x = SMALLINT, pos = `DOUBLE[]`) ``

- `quantile_cont(x = INTEGER, pos = DOUBLE)`

- `` quantile_cont(x = INTEGER, pos = `DOUBLE[]`) ``

- `quantile_cont(x = BIGINT, pos = DOUBLE)`

- `` quantile_cont(x = BIGINT, pos = `DOUBLE[]`) ``

- `quantile_cont(x = HUGEINT, pos = DOUBLE)`

- `` quantile_cont(x = HUGEINT, pos = `DOUBLE[]`) ``

- `quantile_cont(x = FLOAT, pos = DOUBLE)`

- `` quantile_cont(x = FLOAT, pos = `DOUBLE[]`) ``

- `quantile_cont(x = DOUBLE, pos = DOUBLE)`

- `` quantile_cont(x = DOUBLE, pos = `DOUBLE[]`) ``

- `quantile_cont(x = DATE, pos = DOUBLE)`

- `` quantile_cont(x = DATE, pos = `DOUBLE[]`) ``

- `quantile_cont(x = TIMESTAMP, pos = DOUBLE)`

- `` quantile_cont(x = TIMESTAMP, pos = `DOUBLE[]`) ``

- `quantile_cont(x = TIME, pos = DOUBLE)`

- `` quantile_cont(x = TIME, pos = `DOUBLE[]`) ``

- `` quantile_cont(x = `TIMESTAMP WITH TIME ZONE`, pos = DOUBLE) ``

- `` quantile_cont(x = `TIMESTAMP WITH TIME ZONE`, pos = `DOUBLE[]`) ``

- `` quantile_cont(x = `TIME WITH TIME ZONE`, pos = DOUBLE) ``

- `` quantile_cont(x = `TIME WITH TIME ZONE`, pos = `DOUBLE[]`) ``

## SQL examples

    quantile_cont(x, 0.5)
