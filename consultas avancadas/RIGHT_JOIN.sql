-- Conta o número total de registros na tabela de vendedores
SELECT COUNT(*) FROM TABELA_DE_VENDEDORES;

-- Conta o número total de registros na tabela de clientes
SELECT COUNT(*) FROM TABELA_DE_CLIENTES;

-- Seleciona o nome e bairro de clientes e vendedores onde os bairros correspondem
SELECT
    TC.NOME AS NOME_DO_CLIENTE,        -- Nome do cliente
    TC.BAIRRO AS BAIRRO_DO_CLIENTE,    -- Bairro do cliente
    TV.NOME AS NOME_DO_VENDEDOR,       -- Nome do vendedor
    TV.BAIRRO AS BAIRRO_DO_VENDEDOR    -- Bairro do vendedor
FROM TABELA_DE_CLIENTES TC
RIGHT JOIN TABELA_DE_VENDEDORES TV     -- Realiza um RIGHT JOIN para incluir todos os vendedores, mesmo sem correspondência com clientes
ON TC.BAIRRO = TV.BAIRRO;              -- Vincula as tabelas onde os bairros são iguais

-- Seleciona apenas os vendedores que não possuem clientes em seu bairro
SELECT DISTINCT
    TC.NOME AS NOME_DO_CLIENTE,        -- Nome do cliente
    TC.BAIRRO AS BAIRRO_DO_CLIENTE,    -- Bairro do cliente
    TV.NOME AS NOME_DO_VENDEDOR,       -- Nome do vendedor
    TV.BAIRRO AS BAIRRO_DO_VENDEDOR    -- Bairro do vendedor
FROM TABELA_DE_CLIENTES TC
RIGHT JOIN TABELA_DE_VENDEDORES TV     -- Realiza um RIGHT JOIN para incluir todos os vendedores
ON TC.BAIRRO = TV.BAIRRO
WHERE TC.NOME IS NULL;                 -- Filtra para mostrar apenas os vendedores que não possuem clientes no mesmo bairro

-- Seleciona apenas os clientes que não possuem vendedores em seu bairro
SELECT DISTINCT
    TC.NOME AS NOME_DO_CLIENTE,        -- Nome do cliente
    TC.BAIRRO AS BAIRRO_DO_CLIENTE,    -- Bairro do cliente
    TV.NOME AS NOME_DO_VENDEDOR,       -- Nome do vendedor
    TV.BAIRRO AS BAIRRO_DO_VENDEDOR    -- Bairro do vendedor
FROM TABELA_DE_CLIENTES TC
LEFT JOIN TABELA_DE_VENDEDORES TV      -- Realiza um LEFT JOIN para incluir todos os clientes
ON TC.BAIRRO = TV.BAIRRO
WHERE TV.NOME IS NULL;                 -- Filtra para mostrar apenas os clientes que não possuem vendedores no mesmo bairro
