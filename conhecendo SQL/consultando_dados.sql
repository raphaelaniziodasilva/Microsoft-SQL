-- Seleciona todos os registros e colunas da tabela 'TABELA DE PRODUTOS'
SELECT * FROM [TABELA DE PRODUTOS];

-- Seleciona todos os registros e colunas da tabela 'TABELA DE CLIENTES'
SELECT * FROM [TABELA DE CLIENTES];

-- Seleciona as colunas 'ESTADO' e 'NOME' da tabela 'TABELA DE CLIENTES'
SELECT [ESTADO], [NOME] FROM [TABELA DE CLIENTES];

-- Seleciona as colunas 'NOME' e 'ESTADO' da tabela 'TABELA DE CLIENTES' e ordena os resultados pelo 'NOME'
SELECT [NOME], [ESTADO] FROM [TABELA DE CLIENTES] ORDER BY [NOME];

-- Seleciona as colunas 'CODIGO DO PRODUTO', 'NOME DO PRODUTO' e 'SABOR' da tabela 'TABELA DE PRODUTOS' e ordena os resultados pelo 'SABOR'
SELECT [CODIGO DO PRODUTO], [NOME DO PRODUTO], [SABOR] FROM [TABELA DE PRODUTOS] ORDER BY [SABOR];

-- Seleciona as colunas 'CODIGO DO PRODUTO', 'NOME DO PRODUTO' e 'PRECO DE LISTA' da tabela 'TABELA DE PRODUTOS' e renomeia as colunas para 'CODIGO', 'PRODUTO' e 'PREÇO', respectivamente
SELECT [CODIGO DO PRODUTO] AS [CODIGO], [NOME DO PRODUTO] AS [PRODUTO], [PRECO DE LISTA] AS [PREÇO] FROM [TABELA DE PRODUTOS];

-- Seleciona as colunas 'NOME', 'CPF' e 'ESTADO' da tabela 'TABELA DE CLIENTES' e renomeia as colunas para 'NOME DO CLIENTE', 'CPF' e 'UF', respectivamente
SELECT [NOME] AS [NOME DO CLIENTE], [CPF], [ESTADO] AS [UF] FROM [TABELA DE CLIENTES];

-- Seleciona todos os sabores dos produtos na tabela 'TABELA DE PRODUTOS'
SELECT [SABOR] FROM [TABELA DE PRODUTOS];

-- Seleciona sabores distintos dos produtos na tabela 'TABELA DE PRODUTOS' para evitar duplicação
SELECT DISTINCT [SABOR] FROM [TABELA DE PRODUTOS];
