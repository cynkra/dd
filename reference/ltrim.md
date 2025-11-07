# DuckDB function ltrim

Removes any occurrences of any of the `characters` from the left side of
the `string`. `characters` defaults to `space`.

## Arguments

- string:

  `VARCHAR`

- characters:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `ltrim(string = VARCHAR)`

- `ltrim(string = VARCHAR, characters = VARCHAR)`

## SQL examples

    ltrim('    test  ')
    ltrim('>>>>test<<', '><')
