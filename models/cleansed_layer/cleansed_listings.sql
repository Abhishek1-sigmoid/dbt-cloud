SELECT 
  id as listing_id,
  name as listing_name,
  room_type,
  CASE WHEN minimum_nights = 0 THEN 1 ELSE minimum_nights END AS minimum_nights,
  host_id,
  REPLACE(price,'$') :: NUMBER(10, 2) AS price,
  created_at,
  updated_at
FROM
  {{source('raw_layer', 'raw_listings')}}