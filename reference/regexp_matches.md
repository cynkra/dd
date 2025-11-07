# DuckDB function regexp_matches

Returns `true` if `string` contains the `regex`, `false` otherwise. A
set of optional regex `options` can be set.

## Arguments

- string:

  `VARCHAR`

- regex:

  `VARCHAR`

- options:

  `VARCHAR`

## Value

`BOOLEAN`

## Overloads

- `regexp_matches(string = VARCHAR, regex = VARCHAR)`

- `regexp_matches(string = VARCHAR, regex = VARCHAR, options = VARCHAR)`

## SQL examples

    regexp_matches('anabanana', '(an)*')
