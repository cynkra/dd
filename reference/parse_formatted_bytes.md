# DuckDB function parse_formatted_bytes

Parses a human-readable representation of a size in bytes into an
integer.

## Usage

``` r
parse_formatted_bytes(string)
```

## Arguments

- string:

  `VARCHAR`

## Value

`UBIGINT`

## SQL examples

    parse_formatted_bytes('16 KiB')

## See also

Other numeric: [`bin()`](https://cynkra.github.io/dd/reference/bin.md),
[`bit_length()`](https://cynkra.github.io/dd/reference/bit_length.md),
[`formatReadableDecimalSize()`](https://cynkra.github.io/dd/reference/formatReadableDecimalSize.md),
[`format_bytes()`](https://cynkra.github.io/dd/reference/format_bytes.md),
[`greatest()`](https://cynkra.github.io/dd/reference/greatest.md),
[`hex()`](https://cynkra.github.io/dd/reference/hex.md),
[`least()`](https://cynkra.github.io/dd/reference/least.md),
[`len()`](https://cynkra.github.io/dd/reference/len.md),
[`to_base()`](https://cynkra.github.io/dd/reference/to_base.md)

Other string:
[`array_extract()`](https://cynkra.github.io/dd/reference/array_extract.md),
[`ascii()`](https://cynkra.github.io/dd/reference/ascii.md),
[`bar()`](https://cynkra.github.io/dd/reference/bar.md),
[`bin()`](https://cynkra.github.io/dd/reference/bin.md),
[`bit_length()`](https://cynkra.github.io/dd/reference/bit_length.md),
[`chr()`](https://cynkra.github.io/dd/reference/chr.md),
[`concat()`](https://cynkra.github.io/dd/reference/concat.md),
[`concat_ws()`](https://cynkra.github.io/dd/reference/concat_ws.md),
[`contains()`](https://cynkra.github.io/dd/reference/contains.md),
[`formatReadableDecimalSize()`](https://cynkra.github.io/dd/reference/formatReadableDecimalSize.md),
[`format_bytes()`](https://cynkra.github.io/dd/reference/format_bytes.md),
[`from_base64()`](https://cynkra.github.io/dd/reference/from_base64.md),
[`greatest()`](https://cynkra.github.io/dd/reference/greatest.md),
[`hash()`](https://cynkra.github.io/dd/reference/hash.md),
[`hex()`](https://cynkra.github.io/dd/reference/hex.md),
[`ilike_escape()`](https://cynkra.github.io/dd/reference/ilike_escape.md),
[`instr()`](https://cynkra.github.io/dd/reference/instr.md),
[`least()`](https://cynkra.github.io/dd/reference/least.md),
[`left()`](https://cynkra.github.io/dd/reference/left.md),
[`left_grapheme()`](https://cynkra.github.io/dd/reference/left_grapheme.md),
[`len()`](https://cynkra.github.io/dd/reference/len.md),
[`length_grapheme()`](https://cynkra.github.io/dd/reference/length_grapheme.md),
[`like_escape()`](https://cynkra.github.io/dd/reference/like_escape.md),
[`list_slice()`](https://cynkra.github.io/dd/reference/list_slice.md),
[`lower()`](https://cynkra.github.io/dd/reference/lower.md),
[`lpad()`](https://cynkra.github.io/dd/reference/lpad.md),
[`ltrim()`](https://cynkra.github.io/dd/reference/ltrim.md),
[`md5()`](https://cynkra.github.io/dd/reference/md5.md),
[`md5_number()`](https://cynkra.github.io/dd/reference/md5_number.md),
[`nfc_normalize()`](https://cynkra.github.io/dd/reference/nfc_normalize.md),
[`not_ilike_escape()`](https://cynkra.github.io/dd/reference/not_ilike_escape.md),
[`not_like_escape()`](https://cynkra.github.io/dd/reference/not_like_escape.md),
`or–or`,
[`parse_dirname()`](https://cynkra.github.io/dd/reference/parse_dirname.md),
[`parse_dirpath()`](https://cynkra.github.io/dd/reference/parse_dirpath.md),
[`parse_filename()`](https://cynkra.github.io/dd/reference/parse_filename.md),
[`parse_path()`](https://cynkra.github.io/dd/reference/parse_path.md),
[`prefix()`](https://cynkra.github.io/dd/reference/prefix.md),
[`printf()`](https://cynkra.github.io/dd/reference/printf.md),
[`repeat()`](https://cynkra.github.io/dd/reference/repeat.md),
[`replace()`](https://cynkra.github.io/dd/reference/replace.md),
[`reverse()`](https://cynkra.github.io/dd/reference/reverse.md),
[`right()`](https://cynkra.github.io/dd/reference/right.md),
[`right_grapheme()`](https://cynkra.github.io/dd/reference/right_grapheme.md),
[`rpad()`](https://cynkra.github.io/dd/reference/rpad.md),
[`rtrim()`](https://cynkra.github.io/dd/reference/rtrim.md),
[`sha1()`](https://cynkra.github.io/dd/reference/sha1.md),
[`sha256()`](https://cynkra.github.io/dd/reference/sha256.md),
[`starts_with()`](https://cynkra.github.io/dd/reference/starts_with.md),
[`string_split()`](https://cynkra.github.io/dd/reference/string_split.md),
[`strip_accents()`](https://cynkra.github.io/dd/reference/strip_accents.md),
[`strlen()`](https://cynkra.github.io/dd/reference/strlen.md),
[`substring()`](https://cynkra.github.io/dd/reference/substring.md),
[`substring_grapheme()`](https://cynkra.github.io/dd/reference/substring_grapheme.md),
[`suffix()`](https://cynkra.github.io/dd/reference/suffix.md),
[`to_base()`](https://cynkra.github.io/dd/reference/to_base.md),
[`to_base64()`](https://cynkra.github.io/dd/reference/to_base64.md),
[`translate()`](https://cynkra.github.io/dd/reference/translate.md),
[`trim()`](https://cynkra.github.io/dd/reference/trim.md),
[`unbin()`](https://cynkra.github.io/dd/reference/unbin.md),
[`unhex()`](https://cynkra.github.io/dd/reference/unhex.md),
[`unicode()`](https://cynkra.github.io/dd/reference/unicode.md),
[`upper()`](https://cynkra.github.io/dd/reference/upper.md),
[`url_decode()`](https://cynkra.github.io/dd/reference/url_decode.md),
[`url_encode()`](https://cynkra.github.io/dd/reference/url_encode.md)
