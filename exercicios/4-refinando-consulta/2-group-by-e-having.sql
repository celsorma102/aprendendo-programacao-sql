-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT
cus.FirstName,
SUM(inv.Total) as Total
FROM invoices as inv
INNER JOIN customers as cus ON inv.CustomerId = cus.CustomerId
GROUP BY cus.FirstName;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
SELECT
cus.FirstName,
SUM(inv.Total) as Total
FROM invoices as inv
INNER JOIN customers as cus ON inv.CustomerId = cus.CustomerId
GROUP BY cus.FirstName
HAVING SUM(inv.Total) >=40;





-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT
cus.FirstName,
SUM(inv.Total) as Total,
MAX(inv.CustomerId) as Maximo
FROM invoices as inv
INNER JOIN customers as cus ON inv.CustomerId = cus.CustomerId
GROUP BY cus.FirstName
HAVING SUM(Total) >= 40;