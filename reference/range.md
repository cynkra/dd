# DuckDB function range

Creates a list of values between `start` and `stop` - the stop parameter
is exclusive.

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

- `range(col0 = BIGINT)`

- `range(col0 = BIGINT, col1 = BIGINT)`

- `range(col0 = BIGINT, col1 = BIGINT, col2 = BIGINT)`

- `range(col0 = TIMESTAMP, col1 = TIMESTAMP, col2 = INTERVAL)`

- `range(start = BIGINT)`

- `range(start = BIGINT, stop = BIGINT)`

- `range(start = BIGINT, stop = BIGINT, step = BIGINT)`

- `range(start = TIMESTAMP, stop = TIMESTAMP, step = INTERVAL)`

- `` range(start = `TIMESTAMP WITH TIME ZONE`, stop = `TIMESTAMP WITH TIME ZONE`, step = INTERVAL) ``

## SQL examples

    range(2, 5, 3)
