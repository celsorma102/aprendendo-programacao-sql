-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT
CustomerId,
FirstName,
LastName,
Address
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT
CustomerId,
FirstName,
UPPER(LastName) as LastName,
Address
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT
CustomerId,
LOWER(FirstName) as FirstName,
UPPER(LastName) as LastName,
Address
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT
CustomerId,
LOWER(FirstName) as FirstName,
UPPER(LastName) as LastName,
FirstName || " " || LastName as Nome_Completo,
Address
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT
CustomerId,
LOWER(FirstName) as FirstName,
UPPER(LastName) as LastName,
FirstName || " " || LastName as Nome_Completo,
REPLACE(Address, 'Av.', 'Avenida') as Address
FROM customers
WHERE Country LIKE 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT
CustomerId,
LOWER(FirstName) as FirstName,
UPPER(LastName) as LastName,
FirstName || " " || LastName as Nome_Completo,
REPLACE(Address, 'Av.', 'Avenida') as Address
FROM customers
WHERE Country LIKE 'Bra%';