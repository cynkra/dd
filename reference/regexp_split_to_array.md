# DuckDB function regexp_split_to_array

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

- `regexp_split_to_array(string = VARCHAR, regex = VARCHAR)`

- `regexp_split_to_array(string = VARCHAR, regex = VARCHAR, options = VARCHAR)`

## SQL examples

    regexp_split_to_array('hello world; 42', ';? ')
