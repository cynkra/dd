# DuckDB function octet_length

Number of bytes in `blob`.

Returns the number of bytes in the `bitstring`.

## Arguments

- blob:

  `BLOB`

- bitstring:

  `BIT`

## Value

`BIGINT`

## Overloads

- `octet_length(blob = BLOB)`

- `octet_length(bitstring = BIT)`

## SQL examples

    octet_length('\xAA\xBB'::BLOB)
    octet_length('1101011'::BITSTRING)
