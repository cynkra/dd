# DuckDB function jaro_winkler_similarity

The Jaro-Winkler similarity between two strings. Characters of different
cases (e.g., `a` and `A`) are considered different. Returns a number
between 0 and 1. For similarity \< `score_cutoff`, 0 is returned
instead. `score_cutoff` defaults to 0.

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

- `jaro_winkler_similarity(s1 = VARCHAR, s2 = VARCHAR)`

- `jaro_winkler_similarity(s1 = VARCHAR, s2 = VARCHAR, score_cutoff = DOUBLE)`

## SQL examples

    jaro_winkler_similarity('duck', 'duckdb')
