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
