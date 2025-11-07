# DuckDB function right_grapheme

Extracts the right-most `count` grapheme clusters.

## Usage

``` r
right_grapheme(string = VARCHAR, count = BIGINT)
```

## Arguments

- string:

  `VARCHAR`

- count:

  `BIGINT`

## Value

`VARCHAR`

## SQL examples

    right_grapheme('🤦🏼‍♂️🤦🏽‍♀️', 1)
