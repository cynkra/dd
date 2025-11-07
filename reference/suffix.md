# DuckDB function suffix

Returns `true` if `string` ends with `search_string`.

## Usage

``` r
suffix(string = VARCHAR, search_string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- search_string:

  `VARCHAR`

## Value

`BOOLEAN`

## SQL examples

    suffix('abc', 'bc')
