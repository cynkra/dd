# DuckDB function isinf

Returns true if the floating point value is infinite, false otherwise.

## Usage

``` r
isinf(x)
```

## Arguments

- x:

  `FLOAT | DOUBLE | DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Value

`BOOLEAN`

## SQL examples

    isinf('Infinity'::float)
