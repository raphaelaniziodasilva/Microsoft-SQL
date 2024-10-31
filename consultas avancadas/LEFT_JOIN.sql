-- Seleciona o CPF do cadastro da tabela de clientes como CPF_DO_CADASTRO e o nome do cliente como NOME_DO_CLIENTE
-- Também seleciona o CPF correspondente na tabela de notas fiscais como CPF_DA_NOTA
SELECT TC.CPF AS CPF_DO_CADASTRO, TC.NOME AS NOME_DO_CLIENTE,
    NF.CPF AS CPF_DA_NOTA
-- Define a tabela de clientes como TC para facilitar o uso dos alias no código
FROM TABELA_DE_CLIENTES TC
-- Realiza uma junção interna (INNER JOIN) entre a tabela de clientes e a tabela de notas fiscais
-- Compara o CPF da tabela de clientes com o CPF da tabela de notas fiscais para encontrar correspondências
INNER JOIN NOTAS_FISCAIS NF
ON TC.CPF = NF.CPF;

-- Seleciona o CPF do cadastro da tabela de clientes (sem duplicatas) e o nome do cliente
-- Também seleciona o CPF correspondente na tabela de notas fiscais (sem duplicatas)
SELECT DISTINCT TC.CPF AS CPF_DO_CADASTRO, TC.NOME AS NOME_DO_CLIENTE,
    NF.CPF AS CPF_DA_NOTA
-- Define a tabela de clientes como TC
FROM TABELA_DE_CLIENTES TC
-- Realiza uma junção interna (INNER JOIN) entre a tabela de clientes e a tabela de notas fiscais
-- A comparação é feita para obter apenas os registros onde o CPF é o mesmo em ambas as tabelas
INNER JOIN NOTAS_FISCAIS NF
ON TC.CPF = NF.CPF;

-- Conta o número total de registros na tabela de clientes
SELECT COUNT(*) AS TOTAL_DE_CLIENTES
-- Especifica que o COUNT será aplicado à tabela de clientes
FROM TABELA_DE_CLIENTES;

-- Insere um novo registro na tabela de clientes com os dados fornecidos
INSERT INTO TABELA_DE_CLIENTES
-- Lista os campos nos quais os dados serão inseridos: CPF, NOME, ENDERECO_1, ENDERECO_2, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO, IDADE, GENERO, LIMITE_DE_CREDITO, VOLUME_DE_COMPRA, PRIMEIRA_COMPRA
(CPF, NOME, ENDERECO_1, ENDERECO_2, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO, IDADE,
GENERO, LIMITE_DE_CREDITO, VOLUME_DE_COMPRA, PRIMEIRA_COMPRA)
-- Valores correspondentes aos campos listados acima são inseridos
VALUES ('23412632331', 'Ronroroa Zoro', 'R. Tokyo', '', 'Tokyo2', 'Japao', 'JP', '23400000',
'1999-02-05', 28, 'M', 1900000, 24500, 0);

-- Conta o número total de clientes novamente após a inserção do novo registro
SELECT COUNT(*) AS TOTAL_DE_CLIENTES
-- Aplica a contagem à tabela de clientes
FROM TABELA_DE_CLIENTES;

-- Seleciona o CPF do cadastro da tabela de clientes e o nome do cliente (sem duplicatas)
-- Também seleciona o CPF correspondente da tabela de notas fiscais (sem duplicatas)
SELECT DISTINCT TC.CPF AS CPF_DO_CADASTRO, TC.NOME AS NOME_DO_CLIENTE,
    NF.CPF AS CPF_DA_NOTA
-- Define a tabela de clientes como TC
FROM TABELA_DE_CLIENTES TC
-- Realiza uma junção interna (INNER JOIN) com a tabela de notas fiscais onde o CPF da tabela de clientes é igual ao CPF da tabela de notas fiscais
INNER JOIN NOTAS_FISCAIS NF
ON TC.CPF = NF.CPF;

-- Seleciona o CPF do cadastro da tabela de clientes e o nome do cliente (sem duplicatas)
-- Também seleciona o CPF correspondente da tabela de notas fiscais, mesmo que não haja correspondência (LEFT JOIN)
SELECT DISTINCT TC.CPF AS CPF_DO_CADASTRO, TC.NOME AS NOME_DO_CLIENTE,
    NF.CPF AS CPF_DA_NOTA
-- Define a tabela de clientes como TC
FROM TABELA_DE_CLIENTES TC
-- Realiza uma junção externa (LEFT JOIN), o que significa que todos os registros da tabela de clientes serão retornados, mesmo se não houver correspondência na tabela de notas fiscais
LEFT JOIN NOTAS_FISCAIS NF
ON TC.CPF = NF.CPF;

-- Seleciona o CPF e o nome do cliente da tabela de clientes (sem duplicatas)
-- Também tenta selecionar o CPF da tabela de notas fiscais, mas inclui apenas os registros onde não há correspondência (NF.CPF IS NULL)
SELECT DISTINCT TC.CPF AS CPF_DO_CADASTRO, TC.NOME AS NOME_DO_CLIENTE,
    NF.CPF AS CPF_DA_NOTA
-- Define a tabela de clientes como TC
FROM TABELA_DE_CLIENTES TC
-- Realiza uma junção externa (LEFT JOIN) para incluir todos os clientes, mesmo os que não possuem notas fiscais
LEFT JOIN NOTAS_FISCAIS NF
ON TC.CPF = NF.CPF
-- Filtra os resultados para incluir apenas os clientes que não possuem correspondência na tabela de notas fiscais (ou seja, clientes sem notas fiscais)
WHERE NF.CPF IS NULL;
