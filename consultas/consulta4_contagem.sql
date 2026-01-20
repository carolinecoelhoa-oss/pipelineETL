SELECT category, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY category
ORDER BY qtd_registros DESC;

SELECT city, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY city
ORDER BY qtd_registros DESC;

SELECT country, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY country
ORDER BY qtd_registros DESC;

SELECT customer_id, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY customer_id
ORDER BY qtd_registros DESC;

SELECT customer_name, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY customer_name
ORDER BY qtd_registros DESC;

SELECT discount, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY discount
ORDER BY qtd_registros DESC;

SELECT market, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY market
ORDER BY qtd_registros DESC;

SELECT unknown, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY unknown
ORDER BY qtd_registros DESC;

SELECT order_date, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY order_date
ORDER BY qtd_registros DESC;

SELECT order_id, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY order_id
ORDER BY qtd_registros DESC;

SELECT order_priority, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY order_priority
ORDER BY qtd_registros DESC;

SELECT product_id, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY product_id
ORDER BY qtd_registros DESC;

SELECT product_name, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY product_name
ORDER BY qtd_registros DESC;

SELECT quantity, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY quantity
ORDER BY qtd_registros DESC;

SELECT region, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY region
ORDER BY qtd_registros DESC;

SELECT sales, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY sales
ORDER BY qtd_registros DESC;

SELECT segment, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY segment
ORDER BY qtd_registros DESC;

SELECT ship_mode, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY ship_mode
ORDER BY qtd_registros DESC;

SELECT state, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY state
ORDER BY qtd_registros DESC;

SELECT sub_category, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY sub_category
ORDER BY qtd_registros DESC;

SELECT year, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY year
ORDER BY qtd_registros DESC;

SELECT market2, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY market2
ORDER BY qtd_registros DESC;

SELECT weeknum, COUNT(*) AS qtd_registros
FROM `lab-rota1.dataset.superstore`
GROUP BY weeknum
ORDER BY qtd_registros DESC;