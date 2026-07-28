# DuckDB function json_keys

DuckDB function `json_keys()`.

## Usage

``` r
json_keys(col0, col1)
```

## Arguments

- col0:

  `VARCHAR | JSON`

- col1:

  `VARCHAR | VARCHAR[]`

## Value

`VARCHAR[] | VARCHAR[][]`

## Overloads

- `json_keys(col0 = VARCHAR)`

- `json_keys(col0 = VARCHAR, col1 = VARCHAR)`

- `` json_keys(col0 = VARCHAR, col1 = `VARCHAR[]`) ``

- `json_keys(col0 = JSON)`

- `json_keys(col0 = JSON, col1 = VARCHAR)`

- `` json_keys(col0 = JSON, col1 = `VARCHAR[]`) ``

## Provided by

The `json` extension (`LOAD json;`).
