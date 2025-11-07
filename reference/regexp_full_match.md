# DuckDB function regexp_full_match

Returns `true` if the entire `string` matches the `regex`. A set of
optional regex `options` can be set.

## Arguments

- string:

  `VARCHAR`

- regex:

  `VARCHAR`

- col2:

  `VARCHAR`

## Value

`BOOLEAN`

## Overloads

- `regexp_full_match(string = VARCHAR, regex = VARCHAR)`

- `regexp_full_match(string = VARCHAR, regex = VARCHAR, col2 = VARCHAR)`

## SQL examples

    regexp_full_match('anabanana', '(an)*')
