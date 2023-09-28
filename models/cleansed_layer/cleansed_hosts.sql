SELECT
    id as host_id,
    NVL(name, 'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    {{source('raw_layer', 'raw_hosts')}}