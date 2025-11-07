# DuckDB function repeat

Repeats the `string` `count` number of times.

Repeats the `blob` `count` number of times.

## Arguments

- col0:

  `ANY | T[]`

- col1:

  `BIGINT`

- string:

  `VARCHAR`

- count:

  `BIGINT`

- blob:

  `BLOB`

## Value

`VARCHAR | BLOB | T[]`

## Overloads

- `` `repeat`(col0 = ANY, col1 = BIGINT) ``

- `` `repeat`(string = VARCHAR, count = BIGINT) ``

- `` `repeat`(blob = BLOB, count = BIGINT) ``

- `` `repeat`(col0 = `T[]`, col1 = BIGINT) ``

## SQL examples

    repeat('A', 5)
    repeat('\xAA\xBB'::BLOB, 5)
