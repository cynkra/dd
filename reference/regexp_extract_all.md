# DuckDB function regexp_extract_all

Finds non-overlapping occurrences of the `regex` in the `string` and
returns the corresponding values of the capturing `group`. A set of
optional regex `options` can be set.

## Arguments

- string:

  `VARCHAR`

- regex:

  `VARCHAR`

- group:

  `INTEGER`

- options:

  `VARCHAR`

## Value

`VARCHAR[]`

## Overloads

- `regexp_extract_all(string = VARCHAR, regex = VARCHAR)`

- `regexp_extract_all(string = VARCHAR, regex = VARCHAR, group = INTEGER)`

- `regexp_extract_all(string = VARCHAR, regex = VARCHAR, group = INTEGER, options = VARCHAR)`

## SQL examples

    regexp_extract_all('Peter: 33, Paul:14', '(\w+):\s*(\d+)', 2)
