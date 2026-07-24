# DuckDB function jaro_similarity

The Jaro similarity between two strings. Characters of different cases
(e.g., `a` and `A`) are considered different. Returns a number between 0
and 1. For similarity \< `score_cutoff`, 0 is returned instead.
`score_cutoff` defaults to 0.

## Usage

``` r
jaro_similarity(s1, s2, score_cutoff)
```

## Arguments

- s1:

  `VARCHAR`

- s2:

  `VARCHAR`

- score_cutoff:

  `DOUBLE`

## Value

`DOUBLE`

## Overloads

- `jaro_similarity(s1 = VARCHAR, s2 = VARCHAR)`

- `jaro_similarity(s1 = VARCHAR, s2 = VARCHAR, score_cutoff = DOUBLE)`

## SQL examples

    jaro_similarity('duck', 'duckdb')

## See also

Other text_similarity:
[`damerau_levenshtein()`](https://cynkra.github.io/dd/reference/damerau_levenshtein.md),
[`hamming()`](https://cynkra.github.io/dd/reference/hamming.md),
[`jaccard()`](https://cynkra.github.io/dd/reference/jaccard.md),
[`jaro_winkler_similarity()`](https://cynkra.github.io/dd/reference/jaro_winkler_similarity.md),
[`levenshtein()`](https://cynkra.github.io/dd/reference/levenshtein.md)
