ATTACH TABLE _ UUID 'a6993b88-f56d-40c1-b668-d7c74ab2e30d'
(
    `id` String,
    `group_id` String,
    `name` String,
    `date` Date
)
ENGINE = MergeTree
ORDER BY (date, id, group_id)
SETTINGS index_granularity = 8192
