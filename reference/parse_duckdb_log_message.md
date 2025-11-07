# DuckDB function parse_duckdb_log_message

Parse the message into the expected logical type.

## Usage

``` r
parse_duckdb_log_message(type = VARCHAR, message = VARCHAR)
```

## Arguments

- type:

  `VARCHAR`

- message:

  `VARCHAR`

## Value

`ANY`

## SQL examples

    parse_duckdb_log_message('FileSystem', log_message)
