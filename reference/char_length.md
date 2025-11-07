# DuckDB function char_length

Number of characters in `string`.

Returns the bit-length of the `bit` argument.

Returns the length of the `list`.

## Arguments

- string:

  `VARCHAR`

- bit:

  `BIT`

- list:

  `ANY[]`

## Value

`BIGINT`

## Overloads

- `char_length(string = VARCHAR)`

- `char_length(bit = BIT)`

- `` char_length(list = `ANY[]`) ``

## SQL examples

    char_length('Hello🦆')
    char_length(42::TINYINT::BIT)
    char_length([1,2,3])
