-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS'
SELECT * FROM TABELA_DE_PRODUTOS;

-- Seleciona a coluna 'EMBALAGEM' da tabela 'TABELA_DE_PRODUTOS'
SELECT EMBALAGEM FROM TABELA_DE_PRODUTOS;

-- Seleciona todos os valores distintos da coluna 'EMBALAGEM' da tabela 'TABELA_DE_PRODUTOS'
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;

-- Seleciona todas as combinações distintas de 'EMBALAGEM' e 'SABOR' da tabela 'TABELA_DE_PRODUTOS'
SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS;

-- Seleciona todos os valores distintos de 'EMBALAGEM' onde o sabor é 'Uva'
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Uva';

-- Seleciona todos os valores distintos de 'EMBALAGEM' onde o sabor é 'Laranja'
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja';