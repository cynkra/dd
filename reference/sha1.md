# DuckDB function sha1

Returns a `VARCHAR` with the SHA-1 hash of the `value`.

Returns a `VARCHAR` with the SHA-1 hash of the `blob`.

## Arguments

- value:

  `VARCHAR`

- blob:

  `BLOB`

## Value

`VARCHAR`

## Overloads

- `sha1(value = VARCHAR)`

- `sha1(blob = BLOB)`

## SQL examples

    sha1('🦆')
    sha1('\xAA\xBB'::BLOB)
