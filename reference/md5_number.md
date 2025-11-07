# DuckDB function md5_number

Returns the MD5 hash of the `string` as a `HUGEINT`.

Returns the MD5 hash of the `blob` as a `HUGEINT`.

## Arguments

- string:

  `VARCHAR`

- blob:

  `BLOB`

## Value

`UHUGEINT`

## Overloads

- `md5_number(string = VARCHAR)`

- `md5_number(blob = BLOB)`

## SQL examples

    md5_number('abc')
    md5_number('\xAA\xBB'::BLOB)
