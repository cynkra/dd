# DuckDB function split

Splits the `string` along the `separator`.

## Usage

``` r
split(string = VARCHAR, separator = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- separator:

  `VARCHAR`

## Value

`VARCHAR[]`

## SQL examples

    split('hello-world', '-')
