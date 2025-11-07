# DuckDB function trim

Removes any occurrences of any of the `characters` from either side of
the `string`. `characters` defaults to `space`.

## Arguments

- string:

  `VARCHAR`

- characters:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `trim(string = VARCHAR)`

- `trim(string = VARCHAR, characters = VARCHAR)`

## SQL examples

    trim('    test  ')
    trim('>>>>test<<', '><')
