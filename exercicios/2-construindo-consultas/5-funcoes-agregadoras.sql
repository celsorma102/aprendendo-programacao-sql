-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT
  BillingCountry as Pais,
  SUM(Total) as Soma_Total,
  MIN(Total) as Menor_Compra,
  MAX(Total) as Maior_Compra,
  COUNT(Total) as Quantidade_Compras,
  ROUND(AVG(Total), 2) as Media_Compras
FROM invoices
GROUP BY BillingCountry