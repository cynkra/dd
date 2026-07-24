# DuckDB function regexp_full_match

Returns `true` if the entire `string` matches the `regex`. A set of
optional regex `options` can be set.

## Usage

``` r
regexp_full_match(string, regex, col2)
```

## Arguments

- string, regex, col2:

  `VARCHAR`

## Value

`BOOLEAN`

## Overloads

- `regexp_full_match(string = VARCHAR, regex = VARCHAR)`

- `regexp_full_match(string = VARCHAR, regex = VARCHAR, col2 = VARCHAR)`

## SQL examples

    regexp_full_match('anabanana', '(an)*')

## See also

Other regex:
[`regexp_escape()`](https://cynkra.github.io/dd/reference/regexp_escape.md),
[`regexp_extract()`](https://cynkra.github.io/dd/reference/regexp_extract.md),
[`regexp_extract_all()`](https://cynkra.github.io/dd/reference/regexp_extract_all.md),
[`regexp_matches()`](https://cynkra.github.io/dd/reference/regexp_matches.md),
[`regexp_replace()`](https://cynkra.github.io/dd/reference/regexp_replace.md),
[`string_split_regex()`](https://cynkra.github.io/dd/reference/string_split_regex.md)
