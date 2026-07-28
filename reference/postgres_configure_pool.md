# DuckDB function postgres_configure_pool

DuckDB function `postgres_configure_pool()`.

## Usage

``` r
postgres_configure_pool(
  health_check_query,
  max_lifetime_millis,
  enable_reaper_thread,
  enable_thread_local_cache,
  wait_timeout_millis,
  max_connections,
  idle_timeout_millis,
  acquire_mode,
  catalog_name
)
```

## Arguments

- health_check_query:

  `VARCHAR`

- max_lifetime_millis:

  `UBIGINT`

- enable_reaper_thread:

  `BOOLEAN`

- enable_thread_local_cache:

  `BOOLEAN`

- wait_timeout_millis:

  `UBIGINT`

- max_connections:

  `UBIGINT`

- idle_timeout_millis:

  `UBIGINT`

- acquire_mode:

  `VARCHAR`

- catalog_name:

  `VARCHAR`

## Value

Unspecified.

## Provided by

The `postgres_scanner` extension (`LOAD postgres_scanner;`).
