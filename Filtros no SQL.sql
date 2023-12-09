-- Filtrar todos os clientes que fizeram a primeira compra, Primeira compra = 1: true
SELECT [NOME] AS [NOME DO CLIENTE], [ESTADO] AS [UF], [PRIMEIRA COMPRA]
FROM [TABELA DE CLIENTES]
WHERE [PRIMEIRA COMPRA] = 1;

-- Filtrar produtos com o preço igual a 7
SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] = 4.56;

-- Filtrar produtos com preço maior que 7
SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] > 7.00;

-- Filtrar produtos com preço menor ou igual que 7
SELECT * FROM [TABELA DE PRODUTOS]
WHERE [PRECO DE LISTA] <= 7.00;

-- Filtrar produtos por nome
SELECT * FROM [TABELA DE PRODUTOS]
WHERE [EMBALAGEM] > 'Garafa';

-- Filtrar clientes pela data
SELECT [NOME], [DATA DE NASCIMENTO]
FROM [TABELA DE CLIENTES]
WHERE [DATA DE NASCIMENTO] > '2002-01-12';

-- Filtrar clientes comparando pelo ano
SELECT [NOME], [DATA DE NASCIMENTO]
FROM [TABELA DE CLIENTES]
WHERE YEAR([DATA DE NASCIMENTO]) > '1999';
