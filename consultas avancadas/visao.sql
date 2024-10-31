-- Cria uma visão chamada MEDIA_EMBALAGEM que calcula o preço médio por tipo de embalagem
CREATE VIEW MEDIA_EMBALAGEM AS
SELECT EMBALAGEM,                       -- Seleciona a coluna "EMBALAGEM" para agrupar os dados
    AVG(PRECO_DE_LISTA) AS PRECO_MEDIO -- Calcula a média dos preços de lista para cada tipo de embalagem
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM;                      -- Agrupa os dados pela coluna "EMBALAGEM" para calcular o preço médio por tipo de embalagem

-- Consulta todos os registros da visão MEDIA_EMBALAGEM
SELECT * FROM MEDIA_EMBALAGEM;

-- encontre essa nova visao:tabela em exibicoes no sql 