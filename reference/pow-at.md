# DuckDB function ^@

Returns `true` if `string` begins with `search_string`.

## Usage

``` r
`^@`(string = VARCHAR, search_string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- search_string:

  `VARCHAR`

## Value

`BOOLEAN`

## SQL examples

    starts_with('abc', 'a')
