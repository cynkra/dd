# DuckDB function hamming

The Hamming distance between to strings, i.e., the number of positions
with different characters for two strings of equal length. Strings must
be of equal length. Characters of different cases (e.g., `a` and `A`)
are considered different.

## Usage

``` r
hamming(s1 = VARCHAR, s2 = VARCHAR)
```

## Arguments

- s1:

  `VARCHAR`

- s2:

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    hamming('duck', 'luck')

## See also

Other text_similarity:
[`damerau_levenshtein()`](https://cynkra.github.io/dd/reference/damerau_levenshtein.md),
[`jaccard()`](https://cynkra.github.io/dd/reference/jaccard.md),
[`jaro_similarity()`](https://cynkra.github.io/dd/reference/jaro_similarity.md),
[`jaro_winkler_similarity()`](https://cynkra.github.io/dd/reference/jaro_winkler_similarity.md),
[`levenshtein()`](https://cynkra.github.io/dd/reference/levenshtein.md)
