# DuckDB function ascii

Returns an integer that represents the Unicode code point of the first
character of the `string`.

## Usage

``` r
ascii(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`INTEGER`

## SQL examples

    ascii('Ω')
