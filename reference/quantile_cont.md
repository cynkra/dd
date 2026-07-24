# DuckDB function quantile_cont

Returns the interpolated quantile number between 0 and 1 . If pos is a
LIST of FLOATs, then the result is a LIST of the corresponding
interpolated quantiles. .

## Usage

``` r
quantile_cont(x, pos)
```

## Arguments

- x:

  `DECIMAL | TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DATE | TIMESTAMP | TIME | TIMESTAMP WITH TIME ZONE | TIME WITH TIME ZONE`

- pos:

  `DOUBLE | DOUBLE[]`

## Value

`DECIMAL | TINYINT | SMALLINT | INTEGER | BIGINT | HUGEINT | FLOAT | DOUBLE | DATE | TIMESTAMP | TIME | TIMESTAMP WITH TIME ZONE | TIME WITH TIME ZONE`

## SQL examples

    quantile_cont(x, 0.5)
