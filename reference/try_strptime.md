# DuckDB function try_strptime

Converts the `string` text to timestamp according to the format string.
Returns `NULL` on failure.

## Arguments

- text:

  `VARCHAR`

- format:

  `VARCHAR | VARCHAR[]`

## Value

`TIMESTAMP`

## Overloads

- `try_strptime(text = VARCHAR, format = VARCHAR)`

- `` try_strptime(text = VARCHAR, format = `VARCHAR[]`) ``

## SQL examples

    try_strptime('Wed, 1 January 1992 - 08:38:40 PM', '%a, %-d %B %Y - %I:%M:%S %p')
