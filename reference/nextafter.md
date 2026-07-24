# DuckDB function nextafter

Returns the next floating point value after x in the direction of y.

## Usage

``` r
nextafter(x, y)
```

## Arguments

- x, y:

  `DOUBLE | FLOAT`

## Value

`DOUBLE | FLOAT`

## SQL examples

    nextafter(1::float, 2::float)
