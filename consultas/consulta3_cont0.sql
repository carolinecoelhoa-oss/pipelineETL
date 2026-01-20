SELECT
  variavel,
  COUNTIF(valor = 0) AS contagem_0,
  COUNTIF(valor <> 0 AND valor IS NOT NULL) AS contagem_nao_0
FROM `lab-rota1.dataset.superstore`
CROSS JOIN UNNEST([
  STRUCT('discount' AS variavel, discount AS valor),
  STRUCT('quantity' AS variavel, quantity AS valor),
  STRUCT('profit' AS variavel, profit AS valor),
  STRUCT('sales' AS variavel, sales AS valor),
  STRUCT('shipping_cost' AS variavel, shipping_cost AS valor)
])
GROUP BY variavel