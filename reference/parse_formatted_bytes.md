# DuckDB function parse_formatted_bytes

Parses a human-readable representation of a size in bytes into an
integer.

## Usage

``` r
parse_formatted_bytes(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`UBIGINT`

## SQL examples

    parse_formatted_bytes('16 KiB')
