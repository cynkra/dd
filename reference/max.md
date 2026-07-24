# DuckDB function max

Returns the maximum value present in arg.

## Usage

``` r
max(arg, col1)
```

## Arguments

- arg:

  `ANY`

- col1:

  `BIGINT`

## Value

`ANY | ANY[]`

## Overloads

- `max(arg = ANY)`

- `max(arg = ANY, col1 = BIGINT)`

## SQL examples

    max(A)
