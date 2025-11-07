# DuckDB function like_escape

Returns `true` if the `string` matches the `like_specifier` (see Pattern
Matching) using case-sensitive matching. `escape_character` is used to
search for wildcard characters in the `string`.

## Usage

``` r
like_escape(string = VARCHAR, like_specifier = VARCHAR, escape_character = VARCHAR)
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

    like_escape('a%c', 'a$%c', '$')
