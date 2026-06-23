# DuckDB function encode

Converts the `string` to `BLOB`. Converts UTF-8 characters into literal
encoding.

## Usage

``` r
encode(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`BLOB`

## SQL examples

    encode('my_string_with_ü')

## See also

Other blob:
[`decode()`](https://cynkra.github.io/dd/reference/decode.md),
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
