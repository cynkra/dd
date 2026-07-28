# DuckDB function json_type

DuckDB function `json_type()`.

## Usage

``` r
json_type(col0, col1)
```

## Arguments

- col0:

  `VARCHAR | JSON`

- col1:

  `VARCHAR | VARCHAR[]`

## Value

`VARCHAR | VARCHAR[]`

## Overloads

- `json_type(col0 = VARCHAR)`

- `json_type(col0 = VARCHAR, col1 = VARCHAR)`

- `` json_type(col0 = VARCHAR, col1 = `VARCHAR[]`) ``

- `json_type(col0 = JSON)`

- `json_type(col0 = JSON, col1 = VARCHAR)`

- `` json_type(col0 = JSON, col1 = `VARCHAR[]`) ``

## Provided by

The `json` extension (`LOAD json;`).
