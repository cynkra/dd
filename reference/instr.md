# DuckDB function instr

Returns location of first occurrence of `search_string` in `string`,
counting from 1. Returns 0 if no match found.

## Usage

``` r
instr(string = VARCHAR, search_string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- search_string:

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    instr('test test', 'es')
