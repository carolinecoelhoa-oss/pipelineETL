CREATE OR REPLACE TABLE `lab-rota1.dataset.dim_clients` AS
SELECT
    DISTINCT customer_ID AS customer_id,
    customer_name,
    country,
    city,
    state,
    region,
    market,
    market2,
    segment
FROM
    `lab-rota1.dataset.superstore`;

CREATE OR REPLACE TABLE `lab-rota1.dataset.dim_order` AS
SELECT
    DISTINCT order_id,
    order_date,
    order_priority,
    year,
    weeknum
FROM
    `lab-rota1.dataset.superstore`;

CREATE OR REPLACE TABLE `lab-rota1.dataset.dim_product` AS
SELECT
    DISTINCT product_id,
    product_name,
    category,
    sub_category
FROM
    `lab-rota1.dataset.superstore`;

CREATE OR REPLACE TABLE `lab-rota1.dataset.dim_ship` AS
WITH
  dim_unica AS (
    SELECT DISTINCT
      ship_mode,
      ship_date
    FROM
      `lab-rota1.dataset.superstore`
  )
SELECT
  row_number() OVER (ORDER BY ship_mode, ship_date) AS shipping_id,
  ship_mode,
  ship_date
FROM
  dim_unica
ORDER BY
  shipping_id;