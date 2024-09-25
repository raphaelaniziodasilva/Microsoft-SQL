-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS'
SELECT * FROM TABELA_DE_PRODUTOS;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' e ordena os resultados pelo 'PRECO_DE_LISTA' em ordem crescente (padrão)
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' e ordena os resultados pelo 'PRECO_DE_LISTA' explicitamente em ordem crescente
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA ASC;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' e ordena os resultados pelo 'PRECO_DE_LISTA' em ordem decrescente
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' e ordena os resultados pelo 'NOME_DO_PRODUTO' em ordem crescente (padrão)
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY NOME_DO_PRODUTO;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' e ordena primeiro por 'EMBALAGEM' e, dentro de cada tipo de embalagem, por 'NOME_DO_PRODUTO' em ordem crescente
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM, NOME_DO_PRODUTO;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' e ordena os resultados pelo 'NOME_DO_PRODUTO' em ordem decrescente
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY NOME_DO_PRODUTO DESC;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' e ordena primeiro por 'EMBALAGEM' e, dentro de cada tipo de embalagem, por 'NOME_DO_PRODUTO' em ordem decrescente
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM, NOME_DO_PRODUTO DESC;

-- Seleciona as primeiras 5 linhas da tabela 'TABELA_DE_PRODUTOS' e ordena os resultados pelo 'PRECO_DE_LISTA' em ordem decrescente
SELECT TOP 5 * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC;
