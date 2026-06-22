# DuckDB function decode

Converts `blob` to `VARCHAR`. Invalid UTF-8 is handled based on the
error behavior argument. Can be 'strict' (default, fail), 'replace' to
replace invalid characters with '?', or 'ignore' to skip invalid
characters.

## Arguments

- blob:

  `BLOB`

- varchar:

  `VARCHAR`

## Value

`VARCHAR`

## Overloads

- `decode(blob = BLOB)`

- `decode(blob = BLOB, varchar = VARCHAR)`

## SQL examples

    decode('\xC3\xBC'::BLOB)
    decode('\xA0'::BLOB, 'replace')
    decode('\xA0'::BLOB, 'ignore')
