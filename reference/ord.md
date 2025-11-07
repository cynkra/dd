# DuckDB function ord

Returns an `INTEGER` representing the `unicode` codepoint of the first
character in the `string`.

## Usage

``` r
ord(string = VARCHAR)
```

## Arguments

- string:

  `VARCHAR`

## Value

`INTEGER`

## SQL examples

    [unicode('âbcd'), unicode('â'), unicode(''), unicode(NULL)]
