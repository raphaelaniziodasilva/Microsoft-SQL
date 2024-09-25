-- Seleciona as primeiras 5 linhas de todas as colunas da tabela 'TABELA_DE_PRODUTOS'
SELECT TOP 5 * FROM TABELA_DE_PRODUTOS;

-- Seleciona as primeiras 3 linhas de todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde a embalagem é 'PET'
SELECT TOP 3 * FROM TABELA_DE_PRODUTOS WHERE EMBALAGEM = 'PET';

-- Seleciona as primeiras 2 linhas de todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor é 'Maca'
SELECT TOP 2 * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Maca';

-- Seleciona as primeiras 8 linhas de todas as colunas da tabela 'TABELA_DE_CLIENTES'
SELECT TOP 8 * FROM TABELA_DE_CLIENTES;

-- Seleciona as primeiras 2 linhas de todas as colunas da tabela 'TABELA_DE_CLIENTES' onde o estado é 'RJ'
SELECT TOP 2 * FROM TABELA_DE_CLIENTES WHERE ESTADO = 'RJ';

-- Seleciona as primeiras 4 linhas de todas as colunas da tabela 'TABELA_DE_CLIENTES' onde o estado é 'SP'
SELECT TOP 4 * FROM TABELA_DE_CLIENTES WHERE ESTADO = 'SP';

-- Seleciona as primeiras 10 linhas de todas as colunas da tabela 'TABELA_DE_VENDEDORES'
SELECT TOP 10 * FROM TABELA_DE_VENDEDORES;
