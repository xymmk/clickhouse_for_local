ATTACH TABLE _ UUID '8b2d77ea-3b21-48e6-b1a0-fbcc3c59ca57'
(
    `id` String,
    `group_id` String,
    `name` String,
    `date` Date
)
ENGINE = MergeTree
ORDER BY (date, id, group_id)
SETTINGS index_granularity = 8192
