# DuckDB function date_part

Get subfield (equivalent to extract).

## Usage

``` r
date_part(ts, col1)
```

## Arguments

- ts:

  `VARCHAR[] | VARCHAR`

- col1:

  `DATE | INTERVAL | TIME | TIMESTAMP | TIME WITH TIME ZONE | TIME_NS | TIMESTAMP WITH TIME ZONE`

## Value

`STRUCT() | BIGINT`

## SQL examples

    date_part('minute', TIMESTAMP '1992-09-20 20:38:40')
