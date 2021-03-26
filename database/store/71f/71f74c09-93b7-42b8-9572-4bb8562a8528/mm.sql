ATTACH TABLE _ UUID '86115262-0149-404c-84e3-90f0e0d5ccb2'
(
    `id` String,
    `group_id` String,
    `name` String,
    `date` Date
)
ENGINE = MergeTree
ORDER BY (date, id, group_id)
SETTINGS index_granularity = 8192
