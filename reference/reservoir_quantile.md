# DuckDB function reservoir_quantile

Gives the approximate quantile using reservoir sampling, the sample size
is optional and uses 8192 as a default size.

## Arguments

- x:

  `DECIMAL | TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE`

- quantile:

  `DOUBLE | DOUBLE[]`

- sample_size:

  `INTEGER`

## Value

`DECIMAL | DECIMAL[] | TINYINT | TINYINT[] | SMALLINT | SMALLINT[] | INTEGER | INTEGER[] | BIGINT | BIGINT[] | HUGEINT | HUGEINT[] | FLOAT | FLOAT[] | DOUBLE | DOUBLE[]`

## Overloads

- `reservoir_quantile(x = DECIMAL, quantile = DOUBLE)`

- `reservoir_quantile(x = DECIMAL, quantile = DOUBLE, sample_size = INTEGER)`

- `` reservoir_quantile(x = DECIMAL, quantile = `DOUBLE[]`) ``

- `` reservoir_quantile(x = DECIMAL, quantile = `DOUBLE[]`, sample_size = INTEGER) ``

- `reservoir_quantile(x = TINYINT, quantile = DOUBLE)`

- `reservoir_quantile(x = TINYINT, quantile = DOUBLE, sample_size = INTEGER)`

- `` reservoir_quantile(x = TINYINT, quantile = `DOUBLE[]`) ``

- `` reservoir_quantile(x = TINYINT, quantile = `DOUBLE[]`, sample_size = INTEGER) ``

- `reservoir_quantile(x = SMALLINT, quantile = DOUBLE)`

- `reservoir_quantile(x = SMALLINT, quantile = DOUBLE, sample_size = INTEGER)`

- `` reservoir_quantile(x = SMALLINT, quantile = `DOUBLE[]`) ``

- `` reservoir_quantile(x = SMALLINT, quantile = `DOUBLE[]`, sample_size = INTEGER) ``

- `reservoir_quantile(x = INTEGER, quantile = DOUBLE)`

- `reservoir_quantile(x = INTEGER, quantile = DOUBLE, sample_size = INTEGER)`

- `` reservoir_quantile(x = INTEGER, quantile = `DOUBLE[]`) ``

- `` reservoir_quantile(x = INTEGER, quantile = `DOUBLE[]`, sample_size = INTEGER) ``

- `reservoir_quantile(x = BIGINT, quantile = DOUBLE)`

- `reservoir_quantile(x = BIGINT, quantile = DOUBLE, sample_size = INTEGER)`

- `` reservoir_quantile(x = BIGINT, quantile = `DOUBLE[]`) ``

- `` reservoir_quantile(x = BIGINT, quantile = `DOUBLE[]`, sample_size = INTEGER) ``

- `reservoir_quantile(x = HUGEINT, quantile = DOUBLE)`

- `reservoir_quantile(x = HUGEINT, quantile = DOUBLE, sample_size = INTEGER)`

- `` reservoir_quantile(x = HUGEINT, quantile = `DOUBLE[]`) ``

- `` reservoir_quantile(x = HUGEINT, quantile = `DOUBLE[]`, sample_size = INTEGER) ``

- `reservoir_quantile(x = FLOAT, quantile = DOUBLE)`

- `reservoir_quantile(x = FLOAT, quantile = DOUBLE, sample_size = INTEGER)`

- `` reservoir_quantile(x = FLOAT, quantile = `DOUBLE[]`) ``

- `` reservoir_quantile(x = FLOAT, quantile = `DOUBLE[]`, sample_size = INTEGER) ``

- `reservoir_quantile(x = DOUBLE, quantile = DOUBLE)`

- `reservoir_quantile(x = DOUBLE, quantile = DOUBLE, sample_size = INTEGER)`

- `` reservoir_quantile(x = DOUBLE, quantile = `DOUBLE[]`) ``

- `` reservoir_quantile(x = DOUBLE, quantile = `DOUBLE[]`, sample_size = INTEGER) ``

## SQL examples

    reservoir_quantile(A, 0.5, 1024)
