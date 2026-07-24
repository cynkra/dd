# DuckDB function mad

Returns the median absolute deviation for the values within x. NULL
values are ignored. Temporal types return a positive INTERVAL. .

## Usage

``` r
mad(x)
```

## Arguments

- x:

  `DECIMAL | FLOAT | DOUBLE | DATE | TIMESTAMP | TIME | TIMESTAMP WITH TIME ZONE | TIME WITH TIME ZONE`

## Value

`DECIMAL | FLOAT | DOUBLE | INTERVAL`

## SQL examples

    mad(x)
