# DuckDB function md5

Returns the MD5 hash of the `string` as a `VARCHAR`.

Returns the MD5 hash of the `blob` as a `VARCHAR`.

## Arguments

- string:

  `VARCHAR`

- blob:

  `BLOB`

## Value

`VARCHAR`

## Overloads

- `md5(string = VARCHAR)`

- `md5(blob = BLOB)`

## SQL examples

    md5('abc')
    md5('\xAA\xBB'::BLOB)
