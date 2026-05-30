SELECT
    id,
    month,
    town,
    flat_type,
    block,
    street_name,
    storey_range,
    CAST(floor_area_sqm AS NUMERIC) AS floor_area_sqm,
    flat_model,
    lease_commence_date,
    remaining_lease,
    CAST(resale_price AS NUMERIC) AS resale_price,
    CAST(resale_price AS NUMERIC) / CAST(floor_area_sqm AS NUMERIC) AS price_per_sqm
FROM {{ source('resale', 'public_resale_flat_prices_from_jan_2017') }}