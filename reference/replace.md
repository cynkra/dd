# DuckDB function replace

Replaces any occurrences of the `source` with `target` in `string`.

## Usage

``` r
replace(string = VARCHAR, source = VARCHAR, target = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

- source:

  `VARCHAR`

- target:

  `VARCHAR`

## Value

`VARCHAR`

## SQL examples

    replace('hello', 'l', '-')
