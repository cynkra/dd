# DuckDB function switch

Creates a switch statement similar to CASE WHEN/THEN.

## Usage

``` r
switch(key, map)
```

## Arguments

- key:

  `K | MAP(K, V)`

- map:

  `MAP(K, V) | V`

## Value

`V`

## Overloads

- `` switch(key = K, map = `MAP(K, V)`) ``

- `` switch(key = K, map = `MAP(K, V)`, value = V) ``

- `` switch(key = `MAP(K, V)`, map = V) ``

- `` switch(key = `MAP(K, V)`) ``

## SQL examples

    switch(x, map({1 : 1}, default)
