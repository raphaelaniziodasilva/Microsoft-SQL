-- Seleciona os bairros distintos da tabela de clientes
SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES;

-- Seleciona os bairros distintos da tabela de vendedores
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

-- Seleciona os bairros distintos tanto da tabela de clientes quanto da tabela de vendedores
-- Adiciona uma coluna chamada "ORIGEM" que indica se o bairro é de "CLIENTE" ou "FORNECEDOR"
SELECT DISTINCT BAIRRO, 'CLIENTE' AS ORIGEM FROM TABELA_DE_CLIENTES
UNION
SELECT DISTINCT BAIRRO, 'FORNECEDOR' AS ORIGEM FROM TABELA_DE_VENDEDORES;

-- Similar à consulta anterior, mas com UNION ALL para incluir duplicatas se houver bairros em comum
SELECT DISTINCT BAIRRO, 'CLIENTE' AS ORIGEM FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO, 'FORNECEDOR' AS ORIGEM FROM TABELA_DE_VENDEDORES;
