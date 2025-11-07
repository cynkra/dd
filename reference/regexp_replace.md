# DuckDB function regexp_replace

If `string` contains the `regex`, replaces the matching part with
`replacement`. A set of optional regex `options` can be set.

## Arguments

- string:

  `VARCHAR`

- regex:

  `VARCHAR`

- replacement:

  `VARCHAR`

- options:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `regexp_replace(string = VARCHAR, regex = VARCHAR, replacement = VARCHAR)`

- `regexp_replace(string = VARCHAR, regex = VARCHAR, replacement = VARCHAR, options = VARCHAR)`

## SQL examples

    regexp_replace('hello', '[lo]', '-')
