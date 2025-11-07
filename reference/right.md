# DuckDB function right

Extract the right-most `count` characters.

## Usage

``` r
right(string = VARCHAR, count = BIGINT)
```

## Arguments

- string:

  `VARCHAR`

- count:

  `BIGINT`

## Value

`VARCHAR`

## SQL examples

    right('Hello🦆', 3)
