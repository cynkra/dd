# DuckDB function editdist3

The minimum number of single-character edits (insertions, deletions or
substitutions) required to change one string to the other. Characters of
different cases (e.g., `a` and `A`) are considered different.

## Usage

``` r
editdist3(s1 = VARCHAR, s2 = VARCHAR)
```

## Arguments

- s1:

  `VARCHAR`

- s2:

  `VARCHAR`

## Value

`BIGINT`

## SQL examples

    editdist3('duck', 'db')
