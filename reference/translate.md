# DuckDB function translate

Replaces each character in `string` that matches a character in the
`from` set with the corresponding character in the `to` set. If `from`
is longer than `to`, occurrences of the extra characters in `from` are
deleted.

## Usage

``` r
translate(string = VARCHAR, from = VARCHAR, to = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- from:

  `VARCHAR`

- to:

  `VARCHAR`

## Value

`VARCHAR`

## SQL examples

    translate('12345', '143', 'ax')
