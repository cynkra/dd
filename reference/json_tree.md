# DuckDB function json_tree

DuckDB function `json_tree()`.

## Usage

``` r
json_tree(col0, col1)
```

## Arguments

- col0:

  `VARCHAR | JSON`

- col1:

  `VARCHAR`

## Value

Unspecified.

## Overloads

- `json_tree(col0 = VARCHAR)`

- `json_tree(col0 = VARCHAR, col1 = VARCHAR)`

- `json_tree(col0 = JSON)`

- `json_tree(col0 = JSON, col1 = VARCHAR)`

## Provided by

The `json` extension (`LOAD json;`).
