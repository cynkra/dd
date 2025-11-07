# DuckDB function str_split

Splits the `string` along the `separator`.

## Usage

``` r
str_split(string = VARCHAR, separator = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- separator:

  `VARCHAR`

## Value

`VARCHAR[]`

## SQL examples

    str_split('hello-world', '-')
