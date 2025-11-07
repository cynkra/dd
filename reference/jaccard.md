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
