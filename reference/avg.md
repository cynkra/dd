# DuckDB function avg

Calculates the average value for all tuples in x.

## Usage

``` r
avg(x)
```

## Arguments

- x:

  `DECIMAL | SMALLINT | INTEGER | BIGINT | HUGEINT | INTERVAL | DOUBLE | TIMESTAMP | TIMESTAMP WITH TIME ZONE | TIME | TIME WITH TIME ZONE`

## Value

`DECIMAL | DOUBLE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE | TIME | TIME WITH TIME ZONE`

## SQL examples

    SUM(x) / COUNT(*)
