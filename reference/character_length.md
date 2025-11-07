# DuckDB function character_length

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

- `character_length(string = VARCHAR)`

- `character_length(bit = BIT)`

- `` character_length(list = `ANY[]`) ``

## SQL examples

    character_length('Hello🦆')
    character_length(42::TINYINT::BIT)
    character_length([1,2,3])
