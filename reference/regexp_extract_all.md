# DuckDB function regexp_extract_all

Finds non-overlapping occurrences of the `regex` in the `string` and
returns the corresponding values of the capturing `group`. A set of
optional regex `options` can be set.

## Usage

``` r
regexp_extract_all(string, regex, group, options)
```

## Arguments

- string:

  `VARCHAR`

- regex:

  `VARCHAR`

- group:

  `INTEGER | VARCHAR[]`

- options:

  `VARCHAR`

## Value

`VARCHAR[]`

## Overloads

- `regexp_extract_all(string = VARCHAR, regex = VARCHAR)`

- `regexp_extract_all(string = VARCHAR, regex = VARCHAR, group = INTEGER)`

- `regexp_extract_all(string = VARCHAR, regex = VARCHAR, group = INTEGER, options = VARCHAR)`

- `` regexp_extract_all(string = VARCHAR, regex = VARCHAR, group = `VARCHAR[]`) ``

- `` regexp_extract_all(string = VARCHAR, regex = VARCHAR, group = `VARCHAR[]`, options = VARCHAR) ``

## SQL examples

    regexp_extract_all('Peter: 33, Paul:14', '(\w+):\s*(\d+)', 2)

## See also

Other regex:
[`regexp_escape()`](https://cynkra.github.io/dd/reference/regexp_escape.md),
[`regexp_extract()`](https://cynkra.github.io/dd/reference/regexp_extract.md),
[`regexp_full_match()`](https://cynkra.github.io/dd/reference/regexp_full_match.md),
[`regexp_matches()`](https://cynkra.github.io/dd/reference/regexp_matches.md),
[`regexp_replace()`](https://cynkra.github.io/dd/reference/regexp_replace.md),
[`string_split_regex()`](https://cynkra.github.io/dd/reference/string_split_regex.md)
