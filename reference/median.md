# DuckDB function median

Returns the middle value of the set. NULL values are ignored. For even
value counts, interpolate-able types (numeric, date/time) return the
average of the two middle values. Non-interpolate-able types (everything
else) return the lower of the two middle values.

## Usage

``` r
median(x = ANY)
```

## Arguments

- x:

  `ANY`

## Value

`ANY`

## SQL examples

    median(x)
