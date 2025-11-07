# DuckDB function substring_grapheme

Extracts substring starting from grapheme clusters `start` up to the end
of the string. If optional argument `length` is set, extracts a
substring of `length` grapheme clusters instead. Note that a `start`
value of `1` refers to the `first` character of the `string`.

## Arguments

- string:

  `VARCHAR`

- start:

  `BIGINT`

- length:

  `BIGINT`

## Value

`VARCHAR`

## Overloads

- `substring_grapheme(string = VARCHAR, start = BIGINT, length = BIGINT)`

- `substring_grapheme(string = VARCHAR, start = BIGINT)`

## SQL examples

    substring_grapheme('🦆🤦🏼‍♂️🤦🏽‍♀️🦆', 3)
    substring_grapheme('🦆🤦🏼‍♂️🤦🏽‍♀️🦆', 3, 2)
