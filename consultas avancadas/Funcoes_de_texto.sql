-- Seleciona todos os dados da tabela de clientes
SELECT * FROM TABELA_DE_CLIENTES;

-- Seleciona o nome dos clientes e adiciona uma coluna com o nome em letras minúsculas
SELECT NOME, LOWER(NOME) AS NOME_MINUSCULO 
FROM TABELA_DE_CLIENTES;

-- Seleciona o nome dos clientes e adiciona colunas com o nome em letras minúsculas e maiúsculas
SELECT NOME, LOWER(NOME) AS NOME_MINUSCULO, UPPER(NOME) AS NOME_MAIUSCULO 
FROM TABELA_DE_CLIENTES;

-- Seleciona o nome dos clientes e concatena o endereço completo em uma coluna
SELECT NOME, CONCAT(ENDERECO_1, ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO, ' - ', CEP) AS ENDERECO_COMPLETO 
FROM TABELA_DE_CLIENTES;

-- Seleciona todos os dados da tabela de produtos
SELECT * FROM TABELA_DE_PRODUTOS;

-- Seleciona o nome dos produtos e exibe os três primeiros caracteres do nome
SELECT NOME_DO_PRODUTO, LEFT(NOME_DO_PRODUTO, 3) AS TRES_PRIMEIROS_CHAR 
FROM TABELA_DE_PRODUTOS;

-- Seleciona o tamanho do produto e substitui a palavra "Litros" por "L"
SELECT TAMANHO, REPLACE(TAMANHO, 'Litros', 'L') AS TAMANHO_MODIFICADO 
FROM TABELA_DE_PRODUTOS;

-- Seleciona o tamanho do produto e substitui tanto "Litros" quanto "Litro" por "L"
SELECT TAMANHO, REPLACE((REPLACE(TAMANHO, 'Litros', 'L')), 'Litro', 'L') AS TAMANHO_MODIFICADO 
FROM TABELA_DE_PRODUTOS;
