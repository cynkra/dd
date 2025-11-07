# DuckDB function left_grapheme

Extracts the left-most count grapheme clusters.

## Usage

``` r
left_grapheme(string = VARCHAR, count = BIGINT)
```

## Arguments

- string:

  `VARCHAR`

- count:

  `BIGINT`

## Value

`VARCHAR`

## SQL examples

    left_grapheme('🤦🏼‍♂️🤦🏽‍♀️', 1)
