# DuckDB function generate_series

Creates a list of values between `start` and `stop` - the stop parameter
is inclusive.

## Arguments

- col0:

  `BIGINT | TIMESTAMP`

- col1:

  `BIGINT | TIMESTAMP`

- col2:

  `BIGINT | INTERVAL`

- start:

  `BIGINT | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

- stop:

  `BIGINT | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

- step:

  `BIGINT | INTERVAL`

## Value

`BIGINT[] | TIMESTAMP[] | TIMESTAMP WITH TIME ZONE[]`

## Overloads

- `generate_series(col0 = BIGINT)`

- `generate_series(col0 = BIGINT, col1 = BIGINT)`

- `generate_series(col0 = BIGINT, col1 = BIGINT, col2 = BIGINT)`

- `generate_series(col0 = TIMESTAMP, col1 = TIMESTAMP, col2 = INTERVAL)`

- `generate_series(start = BIGINT)`

- `generate_series(start = BIGINT, stop = BIGINT)`

- `generate_series(start = BIGINT, stop = BIGINT, step = BIGINT)`

- `generate_series(start = TIMESTAMP, stop = TIMESTAMP, step = INTERVAL)`

- `` generate_series(start = `TIMESTAMP WITH TIME ZONE`, stop = `TIMESTAMP WITH TIME ZONE`, step = INTERVAL) ``

## SQL examples

    generate_series(2, 5, 3)
