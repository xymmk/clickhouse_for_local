ATTACH TABLE _ UUID 'c50be7b3-3be5-42b4-9c96-bdfe99cb2b7c'
(
    `id` String,
    `group_id` String,
    `name` String,
    `date` Date
)
ENGINE = MergeTree
ORDER BY (date, id, group_id)
SETTINGS index_granularity = 8192
