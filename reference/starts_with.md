# DuckDB function starts_with

Returns `true` if `string` begins with `search_string`.

## Usage

``` r
starts_with(string = VARCHAR, search_string = VARCHAR)
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
