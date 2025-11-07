# DuckDB function current_setting

Returns the current value of the configuration setting.

## Usage

``` r
current_setting(setting_name = VARCHAR)
```

## Arguments

- setting_name:

  `VARCHAR`

## Value

`ANY`

## SQL examples

    current_setting('access_mode')
