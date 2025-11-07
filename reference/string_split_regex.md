# DuckDB function string_split_regex

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

- `string_split_regex(string = VARCHAR, regex = VARCHAR)`

- `string_split_regex(string = VARCHAR, regex = VARCHAR, options = VARCHAR)`

## SQL examples

    string_split_regex('hello world; 42', ';? ')
