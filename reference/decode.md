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

## See also

Other blob:
[`encode()`](https://cynkra.github.io/dd/reference/encode.md),
[`from_base64()`](https://cynkra.github.io/dd/reference/from_base64.md),
[`hex()`](https://cynkra.github.io/dd/reference/hex.md),
[`md5()`](https://cynkra.github.io/dd/reference/md5.md),
[`md5_number()`](https://cynkra.github.io/dd/reference/md5_number.md),
[`octet_length()`](https://cynkra.github.io/dd/reference/octet_length.md),
`or–or`, [`repeat()`](https://cynkra.github.io/dd/reference/repeat.md),
[`sha1()`](https://cynkra.github.io/dd/reference/sha1.md),
[`sha256()`](https://cynkra.github.io/dd/reference/sha256.md),
[`to_base64()`](https://cynkra.github.io/dd/reference/to_base64.md),
[`unbin()`](https://cynkra.github.io/dd/reference/unbin.md),
[`unhex()`](https://cynkra.github.io/dd/reference/unhex.md)
