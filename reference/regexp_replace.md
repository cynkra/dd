# DuckDB function regexp_replace

If `string` contains the `regex`, replaces the matching part with
`replacement`. A set of optional regex `options` can be set.

## Usage

``` r
regexp_replace(string, regex, replacement, options)
```

## Arguments

- string, regex, replacement, options:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `regexp_replace(string = VARCHAR, regex = VARCHAR, replacement = VARCHAR)`

- `regexp_replace(string = VARCHAR, regex = VARCHAR, replacement = VARCHAR, options = VARCHAR)`

## SQL examples

    regexp_replace('hello', '[lo]', '-')

## See also

Other regex:
[`regexp_escape()`](https://cynkra.github.io/dd/reference/regexp_escape.md),
[`regexp_extract()`](https://cynkra.github.io/dd/reference/regexp_extract.md),
[`regexp_extract_all()`](https://cynkra.github.io/dd/reference/regexp_extract_all.md),
[`regexp_full_match()`](https://cynkra.github.io/dd/reference/regexp_full_match.md),
[`regexp_matches()`](https://cynkra.github.io/dd/reference/regexp_matches.md),
[`string_split_regex()`](https://cynkra.github.io/dd/reference/string_split_regex.md)
