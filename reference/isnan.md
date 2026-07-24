# DuckDB function isnan

Returns true if the floating point value is not a number, false
otherwise.

## Usage

``` r
isnan(x)
```

## Arguments

- x:

  `FLOAT | DOUBLE`

## Value

`BOOLEAN`

## SQL examples

    isnan('NaN'::FLOAT)
