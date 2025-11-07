# DuckDB function ilike_escape

Returns `true` if the `string` matches the `like_specifier` (see Pattern
Matching) using case-insensitive matching. `escape_character` is used to
search for wildcard characters in the `string`.

## Usage

``` r
ilike_escape(string = VARCHAR, like_specifier = VARCHAR, escape_character = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- like_specifier:

  `VARCHAR`

- escape_character:

  `VARCHAR`

## Value

`BOOLEAN`

## SQL examples

    ilike_escape('A%c', 'a$%C', '$')
