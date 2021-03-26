ATTACH TABLE _ UUID 'e20ff0ac-e1fb-4eda-9830-7b8d9ee52ea4'
(
    `id` String,
    `group_id` String,
    `name` String,
    `date` Date
)
ENGINE = MergeTree
ORDER BY (date, id, group_id)
SETTINGS index_granularity = 8192
