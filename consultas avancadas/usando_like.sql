-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS'
SELECT * FROM TABELA_DE_PRODUTOS;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor é 'Lima/Limao' ou 'Morango/Limao'
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR IN('Lima/Limao', 'Morango/Limao');

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor termina com 'Limao'
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Limao';

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor contém a palavra 'Manga'
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%Manga%';

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor começa com 'Morango'
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE 'Morango%';

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor começa com 'Morango' e a embalagem é 'PET'
SELECT * FROM TABELA_DE_PRODUTOS WHERE (SABOR LIKE 'Morango%') AND (EMBALAGEM = 'PET');
