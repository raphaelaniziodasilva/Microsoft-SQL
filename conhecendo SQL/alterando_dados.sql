-- Seleciona os nome (nomes do cliente), estados (UF) e indicação de primeira compra para aqueles que ainda não realizaram a primeira compra
SELECT [NOME] AS [NOME DO CLIENTE], [ESTADO] AS [UF], [PRIMEIRA COMPRA] 
FROM [TABELA DE CLIENTES]
WHERE [PRIMEIRA COMPRA] = 0;

-- Seleciona os nome (nomes do cliente), estados (UF) e indicação de primeira compra para aqueles que já realizaram a primeira compra
SELECT [NOME] AS [NOME DO CLIENTE], [ESTADO] AS [UF], [PRIMEIRA COMPRA] 
FROM [TABELA DE CLIENTES]
WHERE [PRIMEIRA COMPRA] = 1;

-- Seleciona todos os registros da tabela 'TABELA DE PRODUTOS'
SELECT * FROM [TABELA DE PRODUTOS];

-- Seleciona todos os registros da tabela 'TABELA DE PRODUTOS' onde o preço de lista é igual a 3.56
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] = 3.56;

-- Seleciona todos os registros da tabela 'TABELA DE PRODUTOS' onde o preço de lista é maior que 4.56
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] > 4.56;

-- Seleciona todos os registros da tabela 'TABELA DE PRODUTOS' onde o preço de lista é menor ou igual a 6.56
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] <= 6.56;

-- Seleciona todos os registros da tabela 'TABELA DE CLIENTES'
SELECT * FROM [TABELA DE CLIENTES];

-- Seleciona os nomes e datas de nascimento dos clientes que nasceram após 20 de março de 1965
SELECT [NOME], [DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] > '1965-03-20';

-- Seleciona os nomes e datas de nascimento dos clientes que nasceram após o ano de 1965
SELECT [NOME], [DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] > '1965';

-- Seleciona os nomes e bairros dos clientes que moram em 'São Paulo' ou 'São Miguel'
SELECT [NOME], [BAIRRO] FROM [TABELA DE CLIENTES] WHERE [BAIRRO] = 'São Paulo' OR [BAIRRO] = 'São Miguel';

-- Seleciona os nomes, bairros e indicação de primeira compra para clientes que realizaram a primeira compra e que estão no estado de SP
SELECT [NOME], [BAIRRO], [PRIMEIRA COMPRA] FROM [TABELA DE CLIENTES] 
WHERE [PRIMEIRA COMPRA] = 1 AND [ESTADO] = 'SP';

-- Seleciona os nomes, bairros e indicação de primeira compra para clientes que não realizaram a primeira compra e que estão no estado de SP
SELECT [NOME], [BAIRRO], [PRIMEIRA COMPRA] FROM [TABELA DE CLIENTES] 
WHERE [PRIMEIRA COMPRA] = 0 AND [ESTADO] = 'SP';

-- Atualiza o preço de lista dos produtos com embalagem 'Lata', aplicando um desconto de 10%
UPDATE [TABELA DE PRODUTOS] SET [PRECO DE LISTA] = [PRECO DE LISTA] * 0.9 WHERE [EMBALAGEM] = 'Lata';

-- Atualiza a embalagem e o preço de lista de um produto específico identificado pelo 'CODIGO DO PRODUTO'
UPDATE [TABELA DE PRODUTOS] SET [EMBALAGEM] = 'Garrafa', [PRECO DE LISTA] = 8.10 
WHERE [CODIGO DO PRODUTO] = '234466';

-- Remove o registro do produto com o código '023456' da tabela 'TABELA DE PRODUTOS'
DELETE FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '023456';
