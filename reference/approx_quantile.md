# DuckDB function approx_quantile

Computes the approximate quantile using T-Digest.

## Arguments

- x:

  `DECIMAL | SMALLINT | INTEGER | BIGINT | HUGEINT | DOUBLE | DATE | TIME | TIME WITH TIME ZONE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | TINYINT | FLOAT`

- pos:

  `FLOAT | FLOAT[]`

## Value

`DECIMAL | SMALLINT | INTEGER | BIGINT | HUGEINT | DOUBLE | DATE | TIME | TIME WITH TIME ZONE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | DECIMAL[] | TINYINT[] | SMALLINT[] | INTEGER[] | BIGINT[] | HUGEINT[] | FLOAT[] | DOUBLE[] | DATE[] | TIME[] | TIME WITH TIME ZONE[] | TIMESTAMP[] | TIMESTAMP WITH TIME ZONE[]`

## Overloads

- `approx_quantile(x = DECIMAL, pos = FLOAT)`

- `approx_quantile(x = SMALLINT, pos = FLOAT)`

- `approx_quantile(x = INTEGER, pos = FLOAT)`

- `approx_quantile(x = BIGINT, pos = FLOAT)`

- `approx_quantile(x = HUGEINT, pos = FLOAT)`

- `approx_quantile(x = DOUBLE, pos = FLOAT)`

- `approx_quantile(x = DATE, pos = FLOAT)`

- `approx_quantile(x = TIME, pos = FLOAT)`

- `` approx_quantile(x = `TIME WITH TIME ZONE`, pos = FLOAT) ``

- `approx_quantile(x = TIMESTAMP, pos = FLOAT)`

- `` approx_quantile(x = `TIMESTAMP WITH TIME ZONE`, pos = FLOAT) ``

- `` approx_quantile(x = DECIMAL, pos = `FLOAT[]`) ``

- `` approx_quantile(x = TINYINT, pos = `FLOAT[]`) ``

- `` approx_quantile(x = SMALLINT, pos = `FLOAT[]`) ``

- `` approx_quantile(x = INTEGER, pos = `FLOAT[]`) ``

- `` approx_quantile(x = BIGINT, pos = `FLOAT[]`) ``

- `` approx_quantile(x = HUGEINT, pos = `FLOAT[]`) ``

- `` approx_quantile(x = FLOAT, pos = `FLOAT[]`) ``

- `` approx_quantile(x = DOUBLE, pos = `FLOAT[]`) ``

- `` approx_quantile(x = DATE, pos = `FLOAT[]`) ``

- `` approx_quantile(x = TIME, pos = `FLOAT[]`) ``

- `` approx_quantile(x = `TIME WITH TIME ZONE`, pos = `FLOAT[]`) ``

- `` approx_quantile(x = TIMESTAMP, pos = `FLOAT[]`) ``

- `` approx_quantile(x = `TIMESTAMP WITH TIME ZONE`, pos = `FLOAT[]`) ``

## SQL examples

    approx_quantile(x, 0.5)
