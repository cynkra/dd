# DuckDB function string_split_regex

Splits the `string` along the `regex`. A set of optional regex `options`
can be set.

## Usage

``` r
string_split_regex(string, regex, options)
```

## Arguments

- string, regex, options:

  `VARCHAR`

## Value

`VARCHAR[]`

## Overloads

- `string_split_regex(string = VARCHAR, regex = VARCHAR)`

- `string_split_regex(string = VARCHAR, regex = VARCHAR, options = VARCHAR)`

## SQL examples

    string_split_regex('hello world; 42', ';? ')

## See also

Other regex:
[`regexp_escape()`](https://cynkra.github.io/dd/reference/regexp_escape.md),
[`regexp_extract()`](https://cynkra.github.io/dd/reference/regexp_extract.md),
[`regexp_extract_all()`](https://cynkra.github.io/dd/reference/regexp_extract_all.md),
[`regexp_full_match()`](https://cynkra.github.io/dd/reference/regexp_full_match.md),
[`regexp_matches()`](https://cynkra.github.io/dd/reference/regexp_matches.md),
[`regexp_replace()`](https://cynkra.github.io/dd/reference/regexp_replace.md)
