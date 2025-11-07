# DuckDB function len

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

- `len(string = VARCHAR)`

- `len(bit = BIT)`

- `` len(list = `ANY[]`) ``

## SQL examples

    length('Hello🦆')
    length(42::TINYINT::BIT)
    length([1,2,3])
