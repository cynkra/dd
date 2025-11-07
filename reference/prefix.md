# DuckDB function prefix

Returns `true` if `string` starts with `search_string`.

## Usage

``` r
prefix(string = VARCHAR, search_string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- search_string:

  `VARCHAR`

## Value

`BOOLEAN`

## SQL examples

    prefix('abc', 'ab')
