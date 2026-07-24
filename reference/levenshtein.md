# DuckDB function levenshtein

The minimum number of single-character edits (insertions, deletions or
substitutions) required to change one string to the other. Characters of
different cases (e.g., `a` and `A`) are considered different.

## Usage

``` r
levenshtein(s1, s2)
```

## Arguments

- s1, s2:

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    levenshtein('duck', 'db')

## See also

Other text_similarity:
[`damerau_levenshtein()`](https://cynkra.github.io/dd/reference/damerau_levenshtein.md),
[`hamming()`](https://cynkra.github.io/dd/reference/hamming.md),
[`jaccard()`](https://cynkra.github.io/dd/reference/jaccard.md),
[`jaro_similarity()`](https://cynkra.github.io/dd/reference/jaro_similarity.md),
[`jaro_winkler_similarity()`](https://cynkra.github.io/dd/reference/jaro_winkler_similarity.md)
