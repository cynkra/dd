# DuckDB function rpad

Pads the `string` with the `character` on the right until it has `count`
characters. Truncates the `string` on the right if it has more than
`count` characters.

## Usage

``` r
rpad(string = VARCHAR, count = INTEGER, character = VARCHAR)
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

    rpad('hello', 10, '<')
