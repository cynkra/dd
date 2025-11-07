# DuckDB function time_bucket

Truncate TIMESTAMPTZ by the specified interval bucket_width. Buckets are
aligned relative to origin TIMESTAMPTZ. The origin defaults to
2000-01-03 00:00:00+00 for buckets that do not include a month or year
interval, and to 2000-01-01 00:00:00+00 for month and year buckets.

## Arguments

- bucket_width:

  `INTERVAL`

- timestamp:

  `DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

- origin:

  `DATE | INTERVAL | TIMESTAMP | TIMESTAMP WITH TIME ZONE | VARCHAR`

## Value

`DATE | TIMESTAMP | TIMESTAMP WITH TIME ZONE`

## Overloads

- `time_bucket(bucket_width = INTERVAL, timestamp = DATE)`

- `time_bucket(bucket_width = INTERVAL, timestamp = DATE, origin = DATE)`

- `time_bucket(bucket_width = INTERVAL, timestamp = DATE, origin = INTERVAL)`

- `time_bucket(bucket_width = INTERVAL, timestamp = TIMESTAMP)`

- `time_bucket(bucket_width = INTERVAL, timestamp = TIMESTAMP, origin = INTERVAL)`

- `time_bucket(bucket_width = INTERVAL, timestamp = TIMESTAMP, origin = TIMESTAMP)`

- `` time_bucket(bucket_width = INTERVAL, timestamp = `TIMESTAMP WITH TIME ZONE`) ``

- `` time_bucket(bucket_width = INTERVAL, timestamp = `TIMESTAMP WITH TIME ZONE`, origin = INTERVAL) ``

- `` time_bucket(bucket_width = INTERVAL, timestamp = `TIMESTAMP WITH TIME ZONE`, origin = `TIMESTAMP WITH TIME ZONE`) ``

- `` time_bucket(bucket_width = INTERVAL, timestamp = `TIMESTAMP WITH TIME ZONE`, origin = VARCHAR) ``

## SQL examples

    time_bucket(INTERVAL '2 weeks', TIMESTAMP '1992-04-20 15:26:00-07', TIMESTAMP '1992-04-01 00:00:00-07')
