# DuckDB function str_split_regex

Splits the `string` along the `regex`. A set of optional regex `options`
can be set.

## Arguments

- string:

  `VARCHAR`

- regex:

  `VARCHAR`

- options:

  `VARCHAR`

## Value

`VARCHAR[]`

## Overloads

- `str_split_regex(string = VARCHAR, regex = VARCHAR)`

- `str_split_regex(string = VARCHAR, regex = VARCHAR, options = VARCHAR)`

## SQL examples

    str_split_regex('hello world; 42', ';? ')
