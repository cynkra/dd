# DuckDB function list_slice

- `list_slice(list = ANY, begin = ANY, end = ANY)`: Extracts a sublist
  or substring using slice conventions. Negative values are accepted.

- `list_slice(list = ANY, begin = ANY, end = ANY, step = BIGINT)`:
  list_slice with added step feature.

## Usage

``` r
list_slice(list, begin, end, step)
```

## Arguments

- list:

  `ANY`

- begin:

  `ANY`

- end:

  `ANY`

- step:

  `BIGINT`

## Value

`ANY`

## Overloads

- `list_slice(list = ANY, begin = ANY, end = ANY)`

- `list_slice(list = ANY, begin = ANY, end = ANY, step = BIGINT)`

## SQL examples

    list_slice([4, 5, 6], 2, 3)
    list_slice([4, 5, 6], 1, 3, 2)
    array_slice('DuckDB', 3, 4)
    array_slice('DuckDB', 3, NULL)
    array_slice('DuckDB', 0, -3)

## See also

Other list:
[`array_extract()`](https://cynkra.github.io/dd/reference/array_extract.md),
[`array_length()`](https://cynkra.github.io/dd/reference/array_length.md),
[`concat()`](https://cynkra.github.io/dd/reference/concat.md),
[`contains()`](https://cynkra.github.io/dd/reference/contains.md),
[`flatten()`](https://cynkra.github.io/dd/reference/flatten.md),
[`generate_series()`](https://cynkra.github.io/dd/reference/generate_series.md),
[`len()`](https://cynkra.github.io/dd/reference/len.md),
[`list_aggregate()`](https://cynkra.github.io/dd/reference/list_aggregate.md),
[`list_concat()`](https://cynkra.github.io/dd/reference/list_concat.md),
[`list_contains()`](https://cynkra.github.io/dd/reference/list_contains.md),
[`list_cosine_distance()`](https://cynkra.github.io/dd/reference/list_cosine_distance.md),
[`list_cosine_similarity()`](https://cynkra.github.io/dd/reference/list_cosine_similarity.md),
[`list_distance()`](https://cynkra.github.io/dd/reference/list_distance.md),
[`list_distinct()`](https://cynkra.github.io/dd/reference/list_distinct.md),
[`list_extract()`](https://cynkra.github.io/dd/reference/list_extract.md),
[`list_filter()`](https://cynkra.github.io/dd/reference/list_filter.md),
[`list_grade_up()`](https://cynkra.github.io/dd/reference/list_grade_up.md),
[`list_has_all()`](https://cynkra.github.io/dd/reference/list_has_all.md),
[`list_has_any()`](https://cynkra.github.io/dd/reference/list_has_any.md),
[`list_inner_product()`](https://cynkra.github.io/dd/reference/list_inner_product.md),
[`list_intersect()`](https://cynkra.github.io/dd/reference/list_intersect.md),
[`list_negative_inner_product()`](https://cynkra.github.io/dd/reference/list_negative_inner_product.md),
[`list_position()`](https://cynkra.github.io/dd/reference/list_position.md),
[`list_reduce()`](https://cynkra.github.io/dd/reference/list_reduce.md),
[`list_resize()`](https://cynkra.github.io/dd/reference/list_resize.md),
[`list_reverse_sort()`](https://cynkra.github.io/dd/reference/list_reverse_sort.md),
[`list_select()`](https://cynkra.github.io/dd/reference/list_select.md),
[`list_sort()`](https://cynkra.github.io/dd/reference/list_sort.md),
[`list_transform()`](https://cynkra.github.io/dd/reference/list_transform.md),
[`list_unique()`](https://cynkra.github.io/dd/reference/list_unique.md),
[`list_value()`](https://cynkra.github.io/dd/reference/list_value.md),
[`list_where()`](https://cynkra.github.io/dd/reference/list_where.md),
[`list_zip()`](https://cynkra.github.io/dd/reference/list_zip.md),
`or–or`, [`range()`](https://cynkra.github.io/dd/reference/range.md),
[`repeat()`](https://cynkra.github.io/dd/reference/repeat.md),
[`unpivot_list()`](https://cynkra.github.io/dd/reference/unpivot_list.md)

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
[`parse_formatted_bytes()`](https://cynkra.github.io/dd/reference/parse_formatted_bytes.md),
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
