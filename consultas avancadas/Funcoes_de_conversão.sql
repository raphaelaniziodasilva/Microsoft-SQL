-- Converte a data e hora atual (GETDATE) para o formato 'YYYY-MM-DD' usando o estilo 121, com um limite de 10 caracteres
SELECT CONVERT(VARCHAR(10), GETDATE(), 121);

-- Converte a data e hora atual (GETDATE) para o formato completo 'YYYY-MM-DD HH:MM:SS' usando o estilo 121, com um limite de 25 caracteres
SELECT CONVERT(VARCHAR(25), GETDATE(), 121);

-- Seleciona todas as colunas da tabela de clientes (TABELA_DE_CLIENTES)
SELECT * FROM TABELA_DE_CLIENTES;

-- Seleciona a coluna DATA_DE_NASCIMENTO da tabela de clientes, convertendo-a para o formato 'YYYY-MM-DD HH:MM:SS' (estilo 121)
SELECT DATA_DE_NASCIMENTO, CONVERT(VARCHAR(25), DATA_DE_NASCIMENTO, 121) 
FROM TABELA_DE_CLIENTES;

-- Seleciona a coluna DATA_DE_NASCIMENTO da tabela de clientes, convertendo-a para o formato 'DD MON YYYY' (estilo 106)
SELECT DATA_DE_NASCIMENTO, CONVERT(VARCHAR(25), DATA_DE_NASCIMENTO, 106) 
FROM TABELA_DE_CLIENTES;

-- Seleciona as colunas NOME_DO_PRODUTO e PRECO_DE_LISTA da tabela de produtos (TABELA_DE_PRODUTOS)
SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA FROM TABELA_DE_PRODUTOS;

-- Seleciona NOME_DO_PRODUTO e cria uma nova coluna 'PRECO' que concatena o texto com o valor da coluna PRECO_DE_LISTA
SELECT NOME_DO_PRODUTO, CONCAT('O preço de lista é: ', PRECO_DE_LISTA) AS PRECO 
FROM TABELA_DE_PRODUTOS;

-- Seleciona NOME_DO_PRODUTO e cria uma nova coluna 'PRECO' que concatena o texto com o valor da coluna PRECO_DE_LISTA
-- Convertendo PRECO_DE_LISTA para VARCHAR(10) para garantir que ele seja tratado como texto na concatenação
SELECT NOME_DO_PRODUTO, 
CONCAT('O preço de lista é: ', CAST(PRECO_DE_LISTA AS VARCHAR(10))) AS PRECO 
FROM TABELA_DE_PRODUTOS;
