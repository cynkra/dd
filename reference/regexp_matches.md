# DuckDB function regexp_matches

Returns `true` if `string` contains the `regex`, `false` otherwise. A
set of optional regex `options` can be set.

## Usage

``` r
regexp_matches(string, regex, options)
```

## Arguments

- string, regex, options:

  `VARCHAR`

## Value

`BOOLEAN`

## Overloads

- `regexp_matches(string = VARCHAR, regex = VARCHAR)`

- `regexp_matches(string = VARCHAR, regex = VARCHAR, options = VARCHAR)`

## SQL examples

    regexp_matches('anabanana', '(an)*')

## See also

Other regex:
[`regexp_escape()`](https://cynkra.github.io/dd/reference/regexp_escape.md),
[`regexp_extract()`](https://cynkra.github.io/dd/reference/regexp_extract.md),
[`regexp_extract_all()`](https://cynkra.github.io/dd/reference/regexp_extract_all.md),
[`regexp_full_match()`](https://cynkra.github.io/dd/reference/regexp_full_match.md),
[`regexp_replace()`](https://cynkra.github.io/dd/reference/regexp_replace.md),
[`string_split_regex()`](https://cynkra.github.io/dd/reference/string_split_regex.md)
