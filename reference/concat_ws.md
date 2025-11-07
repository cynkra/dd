# DuckDB function concat_ws

Concatenates many strings, separated by `separator`. `NULL` inputs are
skipped.

## Usage

``` r
concat_ws(separator = VARCHAR, string = ANY)
```

## Arguments

- separator:

  `VARCHAR`

- string:

  `ANY`

## Value

`VARCHAR`

## SQL examples

    concat_ws(', ', 'Banana', 'Apple', 'Melon')
