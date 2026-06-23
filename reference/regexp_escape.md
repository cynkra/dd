# DuckDB function regexp_escape

Escapes special patterns to turn `string` into a regular expression
similarly to Python's `re.escape` function.

## Usage

``` r
regexp_escape(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`VARCHAR`

## SQL examples

    regexp_escape('https://duckdb.org')

## See also

Other regex:
[`regexp_extract()`](https://cynkra.github.io/dd/reference/regexp_extract.md),
[`regexp_extract_all()`](https://cynkra.github.io/dd/reference/regexp_extract_all.md),
[`regexp_full_match()`](https://cynkra.github.io/dd/reference/regexp_full_match.md),
[`regexp_matches()`](https://cynkra.github.io/dd/reference/regexp_matches.md),
[`regexp_replace()`](https://cynkra.github.io/dd/reference/regexp_replace.md),
[`string_split_regex()`](https://cynkra.github.io/dd/reference/string_split_regex.md)
