-- Consultar os dados da TABELA DE PRODUTOS
SELECT * FROM [TABELA DE PRODUTOS];

-- Consultar os dados da TABELA DE CLIENTES
SELECT * FROM [TABELA DE CLIENTES];

-- Consultar os dados da TABELA DE VENDEDORES
SELECT * FROM [TABELA DE VENDEDORES];

-- Fazendo consulta dos dados pelas colunaS
SELECT [NOME], [CPF], [IDADE], [SEXO] FROM [TABELA DE CLIENTES];
SELECT [NOME DO PRODUTO], [SABOR], [PRECO DE LISTA] FROM [TABELA DE PRODUTOS]
SELECT [NOME], [COMISSAO] FROM [TABELA DE VENDEDORES]

-- Ordenando em alfabetica
SELECT [NOME], [CPF], [IDADE], [SEXO] FROM [TABELA DE CLIENTES] ORDER BY [NOME];
SELECT [NOME DO PRODUTO], [SABOR], [PRECO DE LISTA] FROM [TABELA DE PRODUTOS] ORDER BY [NOME DO PRODUTO]
SELECT [NOME], [COMISSAO] FROM [TABELA DE VENDEDORES] ORDER BY [NOME];