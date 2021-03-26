ATTACH TABLE _ UUID 'b6a65cf1-fdfb-410e-988e-e47350a8dc6e'
(
    `id` String,
    `group_id` String,
    `name` String,
    `date` Date
)
ENGINE = MergeTree
ORDER BY (date, id, group_id)
SETTINGS index_granularity = 8192
