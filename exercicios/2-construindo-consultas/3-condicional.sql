-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT
  Country as Pais,
  State as Estado,
  CASE
    WHEN State = 'SP' THEN 'São Paulo'
    WHEN State = 'RJ' THEN 'Rio de Janeiro'
    WHEN State = 'DF' THEN 'Distrito Federal'
  END as Estado_Extenso
FROM customers

WHERE Country LIKE 'Brazil'
