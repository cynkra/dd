# DuckDB function strftime

Converts a `date` to a string according to the format string.

## Arguments

- data:

  `DATE | TIMESTAMP | TIMESTAMP_NS | VARCHAR | TIMESTAMP WITH TIME ZONE`

- format:

  `VARCHAR | DATE | TIMESTAMP | TIMESTAMP_NS | TIMESTAMP WITH TIME ZONE`

## Value

`VARCHAR`

## Overloads

- `strftime(data = DATE, format = VARCHAR)`

- `strftime(data = TIMESTAMP, format = VARCHAR)`

- `strftime(data = TIMESTAMP_NS, format = VARCHAR)`

- `strftime(data = VARCHAR, format = DATE)`

- `strftime(data = VARCHAR, format = TIMESTAMP)`

- `strftime(data = VARCHAR, format = TIMESTAMP_NS)`

- `` strftime(data = `TIMESTAMP WITH TIME ZONE`, format = VARCHAR) ``

- `` strftime(data = VARCHAR, format = `TIMESTAMP WITH TIME ZONE`) ``

## SQL examples

    strftime(date '1992-01-01', '%a, %-d %B %Y')
