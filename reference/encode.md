# DuckDB function encode

Converts the `string` to `BLOB`. Converts UTF-8 characters into literal
encoding.

## Usage

``` r
encode(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`BLOB`

## SQL examples

    encode('my_string_with_ü')
