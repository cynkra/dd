# DuckDB function concat

Concatenates multiple strings or lists. `NULL` inputs are skipped. See
also operator `||`.

## Usage

``` r
concat(value = ANY)
```

## Arguments

- value:

  `ANY`

## Value

`ANY`

## SQL examples

    concat('Hello', ' ', 'World')
    concat([1, 2, 3], NULL, [4, 5, 6])
