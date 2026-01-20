WITH contagem_linhas AS (
    SELECT
        COUNT(*) AS total_linhas,
        (COUNT(*) - COUNT(DISTINCT category)) AS duplicados_category,
        (COUNT(*) - COUNT(DISTINCT city)) AS duplicados_city,
        (COUNT(*) - COUNT(DISTINCT country)) AS duplicados_country,
        (COUNT(*) - COUNT(DISTINCT customer_ID)) AS duplicados_customer_ID,
        (COUNT(*) - COUNT(DISTINCT customer_name)) AS duplicados_customer_name,
        (COUNT(*) - COUNT(DISTINCT discount)) AS duplicados_discount,
        (COUNT(*) - COUNT(DISTINCT market)) AS duplicados_market,
        (COUNT(*) - COUNT(DISTINCT unknown)) AS duplicados_unknown,
        (COUNT(*) - COUNT(DISTINCT order_date)) AS duplicados_order_date,
        (COUNT(*) - COUNT(DISTINCT order_id)) AS duplicados_order_id,
        (COUNT(*) - COUNT(DISTINCT order_priority)) AS duplicados_order_priority,
        (COUNT(*) - COUNT(DISTINCT product_id)) AS duplicados_product_id,
        (COUNT(*) - COUNT(DISTINCT product_name)) AS duplicados_product_name,
        (COUNT(*) - COUNT(DISTINCT profit)) AS duplicados_profit,
        (COUNT(*) - COUNT(DISTINCT quantity)) AS duplicados_quantity,
        (COUNT(*) - COUNT(DISTINCT region)) AS duplicados_region,
        (COUNT(*) - COUNT(DISTINCT sales)) AS duplicados_sales,
        (COUNT(*) - COUNT(DISTINCT segment)) AS duplicados_segment,
        (COUNT(*) - COUNT(DISTINCT ship_date)) AS duplicados_ship_date,
        (COUNT(*) - COUNT(DISTINCT ship_mode)) AS duplicados_ship_mode,
        (COUNT(*) - COUNT(DISTINCT shipping_cost)) AS duplicados_shipping_cost,
        (COUNT(*) - COUNT(DISTINCT state)) AS duplicados_state,
        (COUNT(*) - COUNT(DISTINCT sub_category)) AS duplicados_sub_category,
        (COUNT(*) - COUNT(DISTINCT year)) AS duplicados_year,
        (COUNT(*) - COUNT(DISTINCT market2)) AS duplicados_market2,
        (COUNT(*) - COUNT(DISTINCT weeknum)) AS duplicados_weeknum,
        (COUNT(*) - COUNT(DISTINCT row_id)) AS duplicados_rowid,
        (COUNT(*) - COUNT(DISTINCT TO_JSON_STRING(t))) AS total_linhas_duplicadas
    FROM
        `lab-rota1.dataset.superstore` AS t
)

SELECT
    coluna,
    duplicados,
    CONCAT(CAST(ROUND(100 * SAFE_DIVIDE(duplicados, total_linhas), 2) AS STRING), '%') AS pct_duplicados
FROM
    contagem_linhas
    UNPIVOT (
        duplicados
        FOR coluna IN (
            duplicados_category AS 'category',
            duplicados_city AS 'city',
            duplicados_country AS 'country',
            duplicados_customer_ID AS 'customer_ID',
            duplicados_customer_name AS 'customer_name',
            duplicados_discount AS 'discount',
            duplicados_market AS 'market',
            duplicados_unknown AS 'unknown',
            duplicados_order_date AS 'order_date',
            duplicados_order_id AS 'order_id',
            duplicados_order_priority AS 'order_priority',
            duplicados_product_id AS 'product_id',
            duplicados_product_name AS 'product_name',
            duplicados_profit AS 'profit',
            duplicados_quantity AS 'quantity',
            duplicados_region AS 'region',
            duplicados_sales AS 'sales',
            duplicados_segment AS 'segment',
            duplicados_ship_date AS 'ship_date',
            duplicados_ship_mode AS 'ship_mode',
            duplicados_shipping_cost AS 'shipping_cost',
            duplicados_state AS 'state',
            duplicados_sub_category AS 'sub_category',
            duplicados_year AS 'year',
            duplicados_market2 AS 'market2',
            duplicados_weeknum AS 'weeknum',
            duplicados_rowid AS 'row_id',
            total_linhas_duplicadas AS 'total_linhas_duplicadas'
        )
    )
ORDER BY
    duplicados DESC;