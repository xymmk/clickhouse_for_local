ATTACH TABLE _ UUID 'e6a262b9-b862-4b76-880a-51c3a550561b'
(
    `id` String,
    `group_id` String,
    `name` String,
    `date` Date
)
ENGINE = MergeTree
ORDER BY (date, id, group_id)
SETTINGS index_granularity = 8192
