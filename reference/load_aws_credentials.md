# DuckDB function load_aws_credentials

DuckDB function `load_aws_credentials()`.

## Usage

``` r
load_aws_credentials(col0, redact_secret, set_region)
```

## Arguments

- col0:

  `VARCHAR`

- redact_secret:

  `BOOLEAN`

- set_region:

  `BOOLEAN`

## Value

Unspecified.

## Overloads

- `load_aws_credentials(redact_secret = BOOLEAN, set_region = BOOLEAN)`

- `load_aws_credentials(col0 = VARCHAR, redact_secret = BOOLEAN, set_region = BOOLEAN)`

## Provided by

The `aws` extension (`LOAD aws;`).
