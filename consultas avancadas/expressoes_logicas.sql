-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS'
SELECT * FROM TABELA_DE_PRODUTOS;

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor é 'Manga' e o tamanho é '470 ml'
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' AND TAMANHO = '470 ml';

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor é 'Manga' ou o tamanho é '470 ml'
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' OR TAMANHO = '470 ml';

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor NÃO é 'Manga' e o tamanho NÃO é '470 ml'
SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' AND TAMANHO = '470 ml');

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor NÃO é 'Manga' ou o tamanho NÃO é '470 ml'
SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' OR TAMANHO = '470 ml');

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor é 'Manga', 'Goiaba' ou 'Laranja'
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' OR SABOR = 'Goiaba' OR SABOR = 'Laranja';

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor está entre 'Manga', 'Goiaba' ou 'Laranja'
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR IN('Manga', 'Goiaba', 'Laranja');

-- Seleciona todas as colunas da tabela 'TABELA_DE_PRODUTOS' onde o sabor está entre 'Manga', 'Goiaba' ou 'Laranja' e o tamanho é '1 Litro'
SELECT * FROM TABELA_DE_PRODUTOS WHERE (SABOR IN('Manga', 'Goiaba', 'Laranja')) AND TAMANHO = '1 Litro';

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a cidade está entre 'Rio de Janeiro' ou 'Sao Paulo'
SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN('Rio de Janeiro', 'Sao Paulo');

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a cidade está entre 'Rio de Janeiro' ou 'Sao Paulo' e a idade é maior ou igual a 20
SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN('Rio de Janeiro', 'Sao Paulo') AND IDADE >= 20;

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a cidade está entre 'Rio de Janeiro' ou 'Sao Paulo' e a idade está entre 20 e 23 (inclusive)
SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN('Rio de Janeiro', 'Sao Paulo') AND (IDADE >= 20 AND IDADE <= 23);
