# DuckDB function regr_count

Returns the number of non-NULL number pairs in a group.

## Usage

``` r
regr_count(y = DOUBLE, x = DOUBLE)
```

## Arguments

- y:

  `DOUBLE`

- x:

  `DOUBLE`

## Value

`UINTEGER`

## SQL examples

    (SUM(x*y) - SUM(x) * SUM(y) / COUNT(*)) / COUNT(*)
