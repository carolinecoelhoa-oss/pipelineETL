CREATE OR REPLACE TABLE `lab-rota1.dataset.superstore_ft_sales` AS
SELECT
  ft.row_id,
  ft.order_id,
  ft.customer_ID AS customer_id,
  ft.product_id,
  ft.sales,
  ft.profit,
  ft.quantity,
  ft.discount,
  ft.shipping_cost,
  tb.shipping_id
FROM
  `lab-rota1.dataset.superstore` AS ft
JOIN
  `lab-rota1.dataset.superstore_ship` AS tb
ON
  ft.ship_mode = tb.ship_mode AND ft.ship_date = tb.ship_date;