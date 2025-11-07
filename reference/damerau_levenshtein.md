# DuckDB function damerau_levenshtein

Extension of Levenshtein distance to also include transposition of
adjacent characters as an allowed edit operation. In other words, the
minimum number of edit operations (insertions, deletions, substitutions
or transpositions) required to change one string to another. Characters
of different cases (e.g., `a` and `A`) are considered different.

## Usage

``` r
damerau_levenshtein(s1 = VARCHAR, s2 = VARCHAR)
```

## Arguments

- s1:

  `VARCHAR`

- s2:

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    damerau_levenshtein('duckdb', 'udckbd')
