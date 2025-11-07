# DuckDB function string_split

Splits the `string` along the `separator`.

## Usage

``` r
string_split(string = VARCHAR, separator = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- separator:

  `VARCHAR`

## Value

`VARCHAR[]`

## SQL examples

    string_split('hello-world', '-')
