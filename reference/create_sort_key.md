# DuckDB function create_sort_key

Constructs a binary-comparable sort key based on a set of input
parameters and sort qualifiers.

## Usage

``` r
create_sort_key(parameters...)
```

## Arguments

- parameters...:

  `ANY`

## Value

`BLOB`

## SQL examples

    create_sort_key('A', 'DESC')
