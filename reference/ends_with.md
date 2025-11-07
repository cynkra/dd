# DuckDB function ends_with

Returns `true` if `string` ends with `search_string`.

## Usage

``` r
ends_with(string = VARCHAR, search_string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- search_string:

  `VARCHAR`

## Value

`BOOLEAN`

## SQL examples

    ends_with('abc', 'bc')
