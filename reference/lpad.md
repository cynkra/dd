# DuckDB function lpad

Pads the `string` with the `character` on the left until it has `count`
characters. Truncates the `string` on the right if it has more than
`count` characters.

## Usage

``` r
lpad(string = VARCHAR, count = INTEGER, character = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- count:

  `INTEGER`

- character:

  `VARCHAR`

## Value

`VARCHAR`

## SQL examples

    lpad('hello', 8, '>')
