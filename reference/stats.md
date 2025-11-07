# DuckDB function stats

Returns a string with statistics about the expression. Expression can be
a column, constant, or SQL expression.

## Usage

``` r
stats(expression = ANY)
```

## Arguments

- expression:

  `ANY`

## Value

`VARCHAR`

## SQL examples

    stats(5)
