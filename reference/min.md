# DuckDB function min

Returns the minimum value present in arg.

## Usage

``` r
min(arg, col1)
```

## Arguments

- arg:

  `ANY`

- col1:

  `BIGINT`

## Value

`ANY | ANY[]`

## Overloads

- `min(arg = ANY)`

- `min(arg = ANY, col1 = BIGINT)`

## SQL examples

    min(A)
