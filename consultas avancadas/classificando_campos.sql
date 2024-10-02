-- Seleciona todas as colunas e registros da tabela de produtos.
SELECT * FROM TABELA_DE_PRODUTOS;

-- Seleciona o nome do produto, sabor e preço da lista da tabela de produtos.
-- Em seguida, usa a estrutura CASE para classificar os produtos como 'CARO', 'EM CONTA' ou 'BARATO' com base no preço de lista.
SELECT NOME_DO_PRODUTO, SABOR, PRECO_DE_LISTA,
(CASE 
    -- Se o preço de lista for maior ou igual a 12, classifica como 'CARO'.
    WHEN PRECO_DE_LISTA >= 12 THEN 'CARO'
    -- Se o preço de lista estiver entre 7 e 12 (exclusivo), classifica como 'EM CONTA'.
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'EM CONTA'
    -- Se o preço de lista for menor que 7, classifica como 'BARATO'.
    ELSE 'BARATO' 
END) AS CLASSIFICACAO
-- Filtra os produtos cujo sabor é 'Manga'.
FROM TABELA_DE_PRODUTOS 
WHERE SABOR = 'Manga';

-- Seleciona o nome do produto, sabor e preço da lista da tabela de produtos.
-- Usa novamente a estrutura CASE para classificar os produtos com base no preço de lista.
SELECT NOME_DO_PRODUTO, SABOR, PRECO_DE_LISTA,
(CASE 
    WHEN PRECO_DE_LISTA >= 12 THEN 'CARO'
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'EM CONTA'
    ELSE 'BARATO' 
END) AS CLASSIFICACAO
-- Ordena os resultados pela classificação, ou seja, 'BARATO', 'EM CONTA' e 'CARO'.
FROM TABELA_DE_PRODUTOS 
ORDER BY CLASSIFICACAO;

-- Conta o número de produtos em cada faixa de preço (CARO, EM CONTA, BARATO).
SELECT
(CASE 
    WHEN PRECO_DE_LISTA >= 12 THEN 'CARO'
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'EM CONTA'
    ELSE 'BARATO' 
END) AS CLASSIFICACAO, 
-- Conta quantos produtos se enquadram em cada classificação.
COUNT(*) AS NUMERO_DE_PRODUTOS
-- Agrupa os produtos pela classificação para contar quantos existem em cada categoria.
FROM TABELA_DE_PRODUTOS
GROUP BY (CASE 
    WHEN PRECO_DE_LISTA >= 12 THEN 'CARO'
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'EM CONTA'
    ELSE 'BARATO' 
END);
