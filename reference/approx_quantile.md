# DuckDB function approx_quantile

Computes the approximate quantile using T-Digest.

## Usage

``` r
approx_quantile(x, pos)
```

## Arguments

- x:

  `DECIMAL | SMALLINT | INTEGER | BIGINT | HUGEINT | DOUBLE | DATE | TIME | TIME WITH TIME ZONE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | TINYINT | FLOAT`

- pos:

  `FLOAT | FLOAT[]`

## Value

`DECIMAL | SMALLINT | INTEGER | BIGINT | HUGEINT | DOUBLE | DATE | TIME | TIME WITH TIME ZONE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | DECIMAL[] | TINYINT[] | SMALLINT[] | INTEGER[] | BIGINT[] | HUGEINT[] | FLOAT[] | DOUBLE[] | DATE[] | TIME[] | TIME WITH TIME ZONE[] | TIMESTAMP[] | TIMESTAMP WITH TIME ZONE[]`

## SQL examples

    approx_quantile(x, 0.5)
