# DuckDB function strpos

Returns location of first occurrence of `search_string` in `string`,
counting from 1. Returns 0 if no match found.

## Usage

``` r
strpos(string = VARCHAR, search_string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- search_string:

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    strpos('test test', 'es')
