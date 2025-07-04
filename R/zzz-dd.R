#' DuckDB functions
#'
#' A list of known DuckDB functions.
#'
#' @export
#' @examples
#' dd[1:3]
dd <- list(
  acos = acos,
  acosh = acosh,
  alias = alias,
  apply = apply,
  array_apply = array_apply,
  array_contains = array_contains,
  array_distinct = array_distinct,
  array_filter = array_filter,
  array_has = array_has,
  array_has_all = array_has_all,
  array_has_any = array_has_any,
  array_indexof = array_indexof,
  array_position = array_position,
  array_select = array_select,
  array_transform = array_transform,
  array_unique = array_unique,
  array_where = array_where,
  ascii = ascii,
  asin = asin,
  asinh = asinh,
  atan = atan,
  atan2 = atan2,
  atanh = atanh,
  base64 = base64,
  bit_position = bit_position,
  can_cast_implicitly = can_cast_implicitly,
  cast_to_type = cast_to_type,
  cbrt = cbrt,
  chr = chr,
  cos = cos,
  cosh = cosh,
  cot = cot,
  current_setting = current_setting,
  damerau_levenshtein = damerau_levenshtein,
  decode = decode,
  degrees = degrees,
  editdist3 = editdist3,
  encode = encode,
  enum_code = enum_code,
  enum_first = enum_first,
  enum_last = enum_last,
  enum_range = enum_range,
  enum_range_boundary = enum_range_boundary,
  even = even,
  exp = exp,
  factorial = factorial,
  filter = filter,
  flatten = flatten,
  formatReadableDecimalSize = formatReadableDecimalSize,
  formatReadableSize = formatReadableSize,
  format_bytes = format_bytes,
  from_base64 = from_base64,
  from_binary = from_binary,
  from_hex = from_hex,
  gamma = gamma,
  get_bit = get_bit,
  hamming = hamming,
  ilike_escape = ilike_escape,
  instr = instr,
  is_histogram_other_bin = is_histogram_other_bin,
  jaccard = jaccard,
  lcase = lcase,
  left = left,
  left_grapheme = left_grapheme,
  length_grapheme = length_grapheme,
  levenshtein = levenshtein,
  lgamma = lgamma,
  like_escape = like_escape,
  list_apply = list_apply,
  list_contains = list_contains,
  list_distinct = list_distinct,
  list_filter = list_filter,
  list_has = list_has,
  list_has_all = list_has_all,
  list_has_any = list_has_any,
  list_indexof = list_indexof,
  list_position = list_position,
  list_select = list_select,
  list_transform = list_transform,
  list_unique = list_unique,
  list_where = list_where,
  ln = ln,
  log10 = log10,
  log2 = log2,
  lower = lower,
  lpad = lpad,
  make_time = make_time,
  make_timestamp_ns = make_timestamp_ns,
  map_contains = map_contains,
  mismatches = mismatches,
  nfc_normalize = nfc_normalize,
  normalized_interval = normalized_interval,
  not_ilike_escape = not_ilike_escape,
  not_like_escape = not_like_escape,
  ord = ord,
  parse_duckdb_log_message = parse_duckdb_log_message,
  pi = pi,
  position = position,
  pow = pow,
  power = power,
  radians = radians,
  regexp_escape = regexp_escape,
  remap_struct = remap_struct,
  replace = replace,
  reverse = reverse,
  right = right,
  right_grapheme = right_grapheme,
  rpad = rpad,
  set_bit = set_bit,
  sin = sin,
  sinh = sinh,
  split = split,
  sqrt = sqrt,
  starts_with = starts_with,
  str_split = str_split,
  string_split = string_split,
  string_to_array = string_to_array,
  strip_accents = strip_accents,
  strlen = strlen,
  strpos = strpos,
  tan = tan,
  tanh = tanh,
  timetz_byte_comparable = timetz_byte_comparable,
  to_base64 = to_base64,
  to_hours = to_hours,
  to_microseconds = to_microseconds,
  to_milliseconds = to_milliseconds,
  to_minutes = to_minutes,
  to_seconds = to_seconds,
  to_timestamp = to_timestamp,
  translate = translate,
  typeof = typeof,
  ucase = ucase,
  unbin = unbin,
  unhex = unhex,
  unicode = unicode,
  union_extract = union_extract,
  union_tag = union_tag,
  upper = upper,
  url_decode = url_decode,
  url_encode = url_encode,
  uuid_extract_timestamp = uuid_extract_timestamp,
  uuid_extract_version = uuid_extract_version,
  vector_type = vector_type,
  version = version
)
