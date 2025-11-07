# DuckDB function string_to_array

Splits the `string` along the `separator`.

## Usage

``` r
string_to_array(string = VARCHAR, separator = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- separator:

  `VARCHAR`

## Value

`VARCHAR[]`

## SQL examples

    string_to_array('hello-world', '-')
