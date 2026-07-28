# DuckDB function json_array_length

DuckDB function `json_array_length()`.

## Usage

``` r
json_array_length(col0, col1)
```

## Arguments

- col0:

  `VARCHAR | JSON`

- col1:

  `VARCHAR | VARCHAR[]`

## Value

`UBIGINT | UBIGINT[]`

## Overloads

- `json_array_length(col0 = VARCHAR)`

- `json_array_length(col0 = VARCHAR, col1 = VARCHAR)`

- `` json_array_length(col0 = VARCHAR, col1 = `VARCHAR[]`) ``

- `json_array_length(col0 = JSON)`

- `json_array_length(col0 = JSON, col1 = VARCHAR)`

- `` json_array_length(col0 = JSON, col1 = `VARCHAR[]`) ``

## Provided by

The `json` extension (`LOAD json;`).
