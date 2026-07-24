# DuckDB function octet_length

- `octet_length(blob = BLOB)`: Number of bytes in `blob`.

- `octet_length(bitstring = BIT)`: Returns the number of bytes in the
  `bitstring`.

## Usage

``` r
octet_length(blob)
```

## Arguments

- blob:

  `BLOB`

## Value

`BIGINT`

## Overloads

- `octet_length(blob = BLOB)`

- `octet_length(bitstring = BIT)`

## SQL examples

    octet_length('\xAA\xBB'::BLOB)
    octet_length('1101011'::BITSTRING)

## See also

Other blob:
[`decode()`](https://cynkra.github.io/dd/reference/decode.md),
[`encode()`](https://cynkra.github.io/dd/reference/encode.md),
[`from_base64()`](https://cynkra.github.io/dd/reference/from_base64.md),
[`hex()`](https://cynkra.github.io/dd/reference/hex.md),
[`md5()`](https://cynkra.github.io/dd/reference/md5.md),
[`md5_number()`](https://cynkra.github.io/dd/reference/md5_number.md),
`or–or`, [`repeat()`](https://cynkra.github.io/dd/reference/repeat.md),
[`sha1()`](https://cynkra.github.io/dd/reference/sha1.md),
[`sha256()`](https://cynkra.github.io/dd/reference/sha256.md),
[`to_base64()`](https://cynkra.github.io/dd/reference/to_base64.md),
[`unbin()`](https://cynkra.github.io/dd/reference/unbin.md),
[`unhex()`](https://cynkra.github.io/dd/reference/unhex.md)
