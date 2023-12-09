SELECT * FROM [TABELA DE CLIENTES];

-- Aplicar frete gratis para quem mora em Marley ou Eldia
SELECT [NOME], [BAIRRO]
FROM [TABELA DE CLIENTES]
WHERE [BAIRRO] = 'Marley' OR [BAIRRO] = 'Eldia';

-- Pegar os clientes que moram em Jujutsu e fizeram apenas a primeira compra
SELECT [NOME], [BAIRRO], [PRIMEIRA COMPRA]
FROM [TABELA DE CLIENTES]
WHERE [PRIMEIRA COMPRA] = 1 AND [BAIRRO] = 'Jujutsu';

SELECT * FROM [TABELA DE PRODUTOS];

-- Alterar todos os preços dos suco que estão em lata em 10% na promoção
UPDATE [TABELA DE PRODUTOS]
SET [PRECO DE LISTA] = [PRECO DE LISTA] * 0.9
WHERE [EMBALAGEM] = 'Lata';

UPDATE [TABELA DE PRODUTOS]
SET [EMBALAGEM] = 'Garrafa', [PRECO DE LISTA] = 8.10
WHERE [CODIGO DO PRODUTO] = '1034587';

SELECT * FROM [TABELA DE PRODUTOS];

-- Deletar um produto do banco de dados
DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1040107';

