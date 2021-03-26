ATTACH TABLE _ UUID '929fee12-7f3d-4b5f-8060-4e5d8cb4485c'
(
    `id` String,
    `group_id` String,
    `name` String,
    `date` Date
)
ENGINE = MergeTree
ORDER BY (date, id, group_id)
SETTINGS index_granularity = 8192
