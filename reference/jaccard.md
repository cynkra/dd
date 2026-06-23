# DuckDB function jaccard

The Jaccard similarity between two strings. Characters of different
cases (e.g., `a` and `A`) are considered different. Returns a number
between 0 and 1.

## Usage

``` r
jaccard(s1 = VARCHAR, s2 = VARCHAR)
```

## Arguments

- s1:

  `VARCHAR`

- s2:

  `VARCHAR`

## Value

`DOUBLE`

## SQL examples

    jaccard('duck', 'luck')

## See also

Other text_similarity:
[`damerau_levenshtein()`](https://cynkra.github.io/dd/reference/damerau_levenshtein.md),
[`hamming()`](https://cynkra.github.io/dd/reference/hamming.md),
[`jaro_similarity()`](https://cynkra.github.io/dd/reference/jaro_similarity.md),
[`jaro_winkler_similarity()`](https://cynkra.github.io/dd/reference/jaro_winkler_similarity.md),
[`levenshtein()`](https://cynkra.github.io/dd/reference/levenshtein.md)
