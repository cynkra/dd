# DuckDB function strptime

Converts the `string` text to timestamp according to the format string.
Throws an error on failure. To return `NULL` on failure, use
try_strptime.

Converts the `string` text to timestamp applying the format strings in
the list until one succeeds. Throws an error on failure. To return
`NULL` on failure, use try_strptime.

## Arguments

- text:

  `VARCHAR`

- format:

  `VARCHAR`

- format-list:

  `VARCHAR[]`

## Value

`TIMESTAMP`

## Overloads

- `strptime(text = VARCHAR, format = VARCHAR)`

- `` strptime(text = VARCHAR, `format-list` = `VARCHAR[]`) ``

## SQL examples

    strptime('Wed, 1 January 1992 - 08:38:40 PM', '%a, %-d %B %Y - %I:%M:%S %p')
    strptime('4/15/2023 10:56:00', ['%d/%m/%Y %H:%M:%S', '%m/%d/%Y %H:%M:%S'])
