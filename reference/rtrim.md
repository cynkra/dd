# DuckDB function rtrim

Removes any occurrences of any of the `characters` from the right side
of the `string`. `characters` defaults to `space`.

## Arguments

- string:

  `VARCHAR`

- characters:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `rtrim(string = VARCHAR)`

- `rtrim(string = VARCHAR, characters = VARCHAR)`

## SQL examples

    rtrim('    test  ')
    rtrim('>>>>test<<', '><')
