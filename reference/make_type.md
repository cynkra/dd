# DuckDB function make_type

Construct a type from its name and optional parameters.

## Usage

``` r
make_type(name = VARCHAR)
```

## Arguments

- name:

  `VARCHAR`

## Value

`TYPE`

## SQL examples

    make_type('DECIMAL', 10, 2)
