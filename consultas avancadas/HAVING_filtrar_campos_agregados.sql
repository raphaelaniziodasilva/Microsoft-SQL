-- Seleciona todos os registros da tabela TABELA_DE_CLIENTES
SELECT * FROM TABELA_DE_CLIENTES;

-- Seleciona o estado e a soma dos limites de crédito por estado
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO 
FROM TABELA_DE_CLIENTES 
GROUP BY ESTADO;

-- Seleciona o estado e a soma dos limites de crédito por estado,
-- mas filtra para mostrar apenas os estados onde a soma do limite de crédito é maior que 840000
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO 
FROM TABELA_DE_CLIENTES 
GROUP BY ESTADO 
HAVING SUM(LIMITE_DE_CREDITO) > 840000;

-- Seleciona todos os registros da tabela TABELA_DE_PRODUTOS
SELECT * FROM TABELA_DE_PRODUTOS;

-- Seleciona a embalagem e a soma dos preços de lista para cada tipo de embalagem
SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS PRECO 
FROM TABELA_DE_PRODUTOS 
GROUP BY EMBALAGEM;

-- Seleciona a embalagem, o preço máximo e o preço mínimo do preço de lista para cada tipo de embalagem
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN 
FROM TABELA_DE_PRODUTOS 
GROUP BY EMBALAGEM;

-- Seleciona a embalagem, o preço máximo e o preço mínimo, 
-- mas apenas para produtos cujo preço de lista é maior ou igual a 10
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN 
FROM TABELA_DE_PRODUTOS 
WHERE PRECO_DE_LISTA >= 10 
GROUP BY EMBALAGEM;

-- Seleciona a embalagem, o preço máximo e o preço mínimo, 
-- apenas para produtos cujo preço de lista é maior ou igual a 10 
-- e onde o preço máximo da embalagem é maior ou igual a 20
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN 
FROM TABELA_DE_PRODUTOS 
WHERE PRECO_DE_LISTA >= 10 
GROUP BY EMBALAGEM 
HAVING MAX(PRECO_DE_LISTA) >= 20;
