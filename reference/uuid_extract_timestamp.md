# DuckDB function uuid_extract_timestamp

Extract the timestamp for the given UUID v7.

## Usage

``` r
uuid_extract_timestamp(uuid = UUID)
```

## Arguments

- uuid:

  `UUID`

## Value

`TIMESTAMP WITH TIME ZONE`

## SQL examples

    uuid_extract_timestamp('019482e4-1441-7aad-8127-eec99573b0a0')
