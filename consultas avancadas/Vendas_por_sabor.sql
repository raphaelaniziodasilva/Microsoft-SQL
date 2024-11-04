-- Seleciona o sabor dos produtos, a data da venda e a quantidade vendida
SELECT TP.SABOR,              -- Seleciona a coluna SABOR da tabela TABELA_DE_PRODUTOS
       NF.DATA_VENDA,         -- Seleciona a coluna DATA_VENDA da tabela NOTAS_FISCAIS
       INF.QUANTIDADE         -- Seleciona a coluna QUANTIDADE da tabela ITENS_NOTAS_FISCAIS
FROM TABELA_DE_PRODUTOS TP   -- Define a tabela TABELA_DE_PRODUTOS com o alias TP
INNER JOIN ITENS_NOTAS_FISCAIS INF  -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO  -- Condição de junção: o código do produto deve ser igual em ambas as tabelas
INNER JOIN NOTAS_FISCAIS NF  -- Realiza uma junção interna com a tabela NOTAS_FISCAIS usando o alias NF
ON INF.NUMERO = NF.NUMERO;   -- Condição de junção: o número da nota deve ser igual em ambas as tabelas

-- Seleciona o sabor dos produtos, o ano da data da venda e a soma das quantidades vendidas por ano
SELECT TP.SABOR,              -- Seleciona a coluna SABOR da tabela TABELA_DE_PRODUTOS
       YEAR(NF.DATA_VENDA) AS ANO,  -- Extrai o ano da DATA_VENDA e o renomeia como ANO
       SUM(INF.QUANTIDADE) AS VENDA_ANO  -- Calcula a soma das quantidades vendidas e renomeia como VENDA_ANO
FROM TABELA_DE_PRODUTOS TP   -- Define a tabela TABELA_DE_PRODUTOS com o alias TP
INNER JOIN ITENS_NOTAS_FISCAIS INF  -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO  -- Condição de junção: o código do produto deve ser igual em ambas as tabelas
INNER JOIN NOTAS_FISCAIS NF  -- Realiza uma junção interna com a tabela NOTAS_FISCAIS usando o alias NF
ON INF.NUMERO = NF.NUMERO;   -- Condição de junção: o número da nota deve ser igual em ambas as tabelas

-- Seleciona o sabor dos produtos, o ano da data da venda e a soma das quantidades vendidas por ano, agrupando os resultados
SELECT TP.SABOR,              -- Seleciona a coluna SABOR da tabela TABELA_DE_PRODUTOS
       YEAR(NF.DATA_VENDA) AS ANO,  -- Extrai o ano da DATA_VENDA e o renomeia como ANO
       SUM(INF.QUANTIDADE) AS VENDA_ANO  -- Calcula a soma das quantidades vendidas e renomeia como VENDA_ANO
FROM TABELA_DE_PRODUTOS TP   -- Define a tabela TABELA_DE_PRODUTOS com o alias TP
INNER JOIN ITENS_NOTAS_FISCAIS INF  -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO  -- Condição de junção: o código do produto deve ser igual em ambas as tabelas
INNER JOIN NOTAS_FISCAIS NF  -- Realiza uma junção interna com a tabela NOTAS_FISCAIS usando o alias NF
ON INF.NUMERO = NF.NUMERO    -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA);  -- Agrupa os resultados por SABOR e ANO


-- Seleciona o sabor dos produtos, o ano da data da venda e a soma das quantidades vendidas por ano
SELECT TP.SABOR,                       -- Seleciona a coluna SABOR da tabela TABELA_DE_PRODUTOS
       YEAR(NF.DATA_VENDA) AS ANO,    -- Extrai o ano da DATA_VENDA e o renomeia como ANO
       SUM(INF.QUANTIDADE) AS VENDA_ANO -- Calcula a soma das quantidades vendidas e renomeia como VENDA_ANO
FROM TABELA_DE_PRODUTOS TP             -- Define a tabela TABELA_DE_PRODUTOS com o alias TP
INNER JOIN ITENS_NOTAS_FISCAIS INF      -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO -- Condição de junção: o código do produto deve ser igual em ambas as tabelas
INNER JOIN NOTAS_FISCAIS NF              -- Realiza uma junção interna com a tabela NOTAS_FISCAIS usando o alias NF
ON INF.NUMERO = NF.NUMERO                -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
WHERE YEAR(NF.DATA_VENDA) = 2015        -- Filtra os resultados para incluir apenas vendas do ano de 2015
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA); -- Agrupa os resultados por SABOR e ANO

-- Seleciona o sabor dos produtos, o ano da data da venda e a soma das quantidades vendidas por ano
SELECT TP.SABOR,                       -- Seleciona a coluna SABOR da tabela TABELA_DE_PRODUTOS
       YEAR(NF.DATA_VENDA) AS ANO,    -- Extrai o ano da DATA_VENDA e o renomeia como ANO
       SUM(INF.QUANTIDADE) AS VENDA_ANO -- Calcula a soma das quantidades vendidas e renomeia como VENDA_ANO
FROM TABELA_DE_PRODUTOS TP             -- Define a tabela TABELA_DE_PRODUTOS com o alias TP
INNER JOIN ITENS_NOTAS_FISCAIS INF      -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO -- Condição de junção: o código do produto deve ser igual em ambas as tabelas
INNER JOIN NOTAS_FISCAIS NF              -- Realiza uma junção interna com a tabela NOTAS_FISCAIS usando o alias NF
ON INF.NUMERO = NF.NUMERO                -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
WHERE YEAR(NF.DATA_VENDA) = 2015        -- Filtra os resultados para incluir apenas vendas do ano de 2015
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)  -- Agrupa os resultados por SABOR e ANO
ORDER BY SUM(INF.QUANTIDADE) DESC;       -- Ordena os resultados pela soma das quantidades vendidas em ordem decrescente

-- Seleciona o ano da data da venda e a soma total das quantidades vendidas por ano
SELECT YEAR(NF.DATA_VENDA) AS ANO,                -- Extrai o ano da DATA_VENDA e o renomeia como ANO
       SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO    -- Calcula a soma total das quantidades vendidas e renomeia como VENDA_TOTAL_ANO
FROM NOTAS_FISCAIS NF                             -- Define a tabela NOTAS_FISCAIS com o alias NF
INNER JOIN ITENS_NOTAS_FISCAIS INF                -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON NF.NUMERO = INF.NUMERO                         -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
GROUP BY YEAR(NF.DATA_VENDA);                    -- Agrupa os resultados pelo ano da data da venda

-- Seleciona o ano da data da venda e a soma total das quantidades vendidas para o ano de 2015
SELECT YEAR(NF.DATA_VENDA) AS ANO,                -- Extrai o ano da DATA_VENDA e o renomeia como ANO
       SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO    -- Calcula a soma total das quantidades vendidas e renomeia como VENDA_TOTAL_ANO
FROM NOTAS_FISCAIS NF                             -- Define a tabela NOTAS_FISCAIS com o alias NF
INNER JOIN ITENS_NOTAS_FISCAIS INF                -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON NF.NUMERO = INF.NUMERO                         -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
WHERE YEAR(NF.DATA_VENDA) = 2015                 -- Filtra os resultados para incluir apenas vendas do ano de 2015
GROUP BY YEAR(NF.DATA_VENDA);                    -- Agrupa os resultados pelo ano da data da venda

-- Seleciona o sabor dos produtos, o ano da data da venda e a soma das quantidades vendidas por ano para 2015
SELECT TP.SABOR,                          -- Seleciona a coluna SABOR da tabela TABELA_DE_PRODUTOS
       YEAR(NF.DATA_VENDA) AS ANO,       -- Extrai o ano da DATA_VENDA e o renomeia como ANO
       SUM(INF.QUANTIDADE) AS VENDA_ANO   -- Calcula a soma das quantidades vendidas e renomeia como VENDA_ANO
FROM TABELA_DE_PRODUTOS TP                -- Define a tabela TABELA_DE_PRODUTOS com o alias TP
INNER JOIN ITENS_NOTAS_FISCAIS INF         -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO -- Condição de junção: o código do produto deve ser igual em ambas as tabelas
INNER JOIN NOTAS_FISCAIS NF                 -- Realiza uma junção interna com a tabela NOTAS_FISCAIS usando o alias NF
ON INF.NUMERO = NF.NUMERO                   -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
WHERE YEAR(NF.DATA_VENDA) = 2015           -- Filtra os resultados para incluir apenas vendas do ano de 2015
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)     -- Agrupa os resultados por SABOR e ANO
ORDER BY SUM(INF.QUANTIDADE) DESC;          -- Ordena os resultados pela soma das quantidades vendidas em ordem decrescente

-- Seleciona o ano da data da venda e a soma total das quantidades vendidas para o ano de 2015
SELECT YEAR(NF.DATA_VENDA) AS ANO,          -- Extrai o ano da DATA_VENDA e o renomeia como ANO
       SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO -- Calcula a soma total das quantidades vendidas e renomeia como VENDA_TOTAL_ANO
FROM NOTAS_FISCAIS NF                       -- Define a tabela NOTAS_FISCAIS com o alias NF
INNER JOIN ITENS_NOTAS_FISCAIS INF          -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
ON NF.NUMERO = INF.NUMERO                   -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
WHERE YEAR(NF.DATA_VENDA) = 2015           -- Filtra os resultados para incluir apenas vendas do ano de 2015
GROUP BY YEAR(NF.DATA_VENDA);               -- Agrupa os resultados pelo ano da data da venda


-- Seleciona os dados combinados das duas subconsultas
SELECT 
    T1.SABOR,               -- Seleciona o sabor dos produtos da primeira subconsulta
    T1.ANO,                 -- Seleciona o ano da primeira subconsulta
    T1.VENDA_ANO,           -- Seleciona a soma das quantidades vendidas da primeira subconsulta
    T2.VENDA_TOTAL_ANO      -- Seleciona a soma total das quantidades vendidas do ano da segunda subconsulta
FROM (
    -- Primeira subconsulta: vendas por sabor e ano
    SELECT 
        TP.SABOR,                                 -- Seleciona a coluna SABOR da tabela TABELA_DE_PRODUTOS
        YEAR(NF.DATA_VENDA) AS ANO,              -- Extrai o ano da DATA_VENDA e o renomeia como ANO
        SUM(INF.QUANTIDADE) AS VENDA_ANO         -- Calcula a soma das quantidades vendidas e renomeia como VENDA_ANO
    FROM 
        TABELA_DE_PRODUTOS TP                     -- Define a tabela TABELA_DE_PRODUTOS com o alias TP
    INNER JOIN 
        ITENS_NOTAS_FISCAIS INF                   -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
    ON 
        TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO -- Condição de junção: o código do produto deve ser igual em ambas as tabelas
    INNER JOIN 
        NOTAS_FISCAIS NF                           -- Realiza uma junção interna com a tabela NOTAS_FISCAIS usando o alias NF
    ON 
        INF.NUMERO = NF.NUMERO                    -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
    WHERE 
        YEAR(NF.DATA_VENDA) = 2015                 -- Filtra os resultados para incluir apenas vendas do ano de 2015
    GROUP BY 
        TP.SABOR, YEAR(NF.DATA_VENDA)              -- Agrupa os resultados por SABOR e ANO
    ORDER BY 
        SUM(INF.QUANTIDADE) DESC                   -- Ordena os resultados pela soma das quantidades vendidas em ordem decrescente
) T1 
INNER JOIN (
    -- Segunda subconsulta: total de vendas do ano
    SELECT 
        YEAR(NF.DATA_VENDA) AS ANO,               -- Extrai o ano da DATA_VENDA e o renomeia como ANO
        SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO    -- Calcula a soma total das quantidades vendidas e renomeia como VENDA_TOTAL_ANO
    FROM 
        NOTAS_FISCAIS NF                           -- Define a tabela NOTAS_FISCAIS com o alias NF
    INNER JOIN 
        ITENS_NOTAS_FISCAIS INF                    -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
    ON 
        NF.NUMERO = INF.NUMERO                     -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
    WHERE 
        YEAR(NF.DATA_VENDA) = 2015                 -- Filtra os resultados para incluir apenas vendas do ano de 2015
    GROUP BY 
        YEAR(NF.DATA_VENDA)                         -- Agrupa os resultados pelo ano da data da venda
) T2 
ON 
    T1.ANO = T2.ANO;                              -- Junta as duas subconsultas onde o ano é igual


-- Seleciona os dados combinados das vendas de produtos e total de vendas do ano
SELECT 
    VS.SABOR,               -- Seleciona o sabor dos produtos da subconsulta VS
    VS.ANO,                 -- Seleciona o ano da venda da subconsulta VS
    VS.VENDA_ANO,           -- Seleciona a soma das quantidades vendidas da subconsulta VS
    VA.VENDA_TOTAL_ANO      -- Seleciona a soma total das quantidades vendidas do ano da subconsulta VA
FROM (
    -- Primeira subconsulta: vendas por sabor e ano
    SELECT 
        TP.SABOR,                                 -- Seleciona a coluna SABOR da tabela TABELA_DE_PRODUTOS
        YEAR(NF.DATA_VENDA) AS ANO,              -- Extrai o ano da DATA_VENDA e o renomeia como ANO
        SUM(INF.QUANTIDADE) AS VENDA_ANO         -- Calcula a soma das quantidades vendidas e renomeia como VENDA_ANO
    FROM 
        TABELA_DE_PRODUTOS TP                     -- Define a tabela TABELA_DE_PRODUTOS com o alias TP
    INNER JOIN 
        ITENS_NOTAS_FISCAIS INF                   -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
    ON 
        TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO -- Condição de junção: o código do produto deve ser igual em ambas as tabelas
    INNER JOIN 
        NOTAS_FISCAIS NF                           -- Realiza uma junção interna com a tabela NOTAS_FISCAIS usando o alias NF
    ON 
        INF.NUMERO = NF.NUMERO                    -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
    WHERE 
        YEAR(NF.DATA_VENDA) = 2015                 -- Filtra os resultados para incluir apenas vendas do ano de 2015
    GROUP BY 
        TP.SABOR, YEAR(NF.DATA_VENDA)              -- Agrupa os resultados por SABOR e ANO
    ORDER BY 
        SUM(INF.QUANTIDADE) DESC                   -- Ordena os resultados pela soma das quantidades vendidas em ordem decrescente
) VS 
INNER JOIN (
    -- Segunda subconsulta: total de vendas do ano
    SELECT 
        YEAR(NF.DATA_VENDA) AS ANO,               -- Extrai o ano da DATA_VENDA e o renomeia como ANO
        SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO    -- Calcula a soma total das quantidades vendidas e renomeia como VENDA_TOTAL_ANO
    FROM 
        NOTAS_FISCAIS NF                           -- Define a tabela NOTAS_FISCAIS com o alias NF
    INNER JOIN 
        ITENS_NOTAS_FISCAIS INF                    -- Realiza uma junção interna com a tabela ITENS_NOTAS_FISCAIS usando o alias INF
    ON 
        NF.NUMERO = INF.NUMERO                     -- Condição de junção: o número da nota deve ser igual em ambas as tabelas
    WHERE 
        YEAR(NF.DATA_VENDA) = 2015                 -- Filtra os resultados para incluir apenas vendas do ano de 2015
    GROUP BY 
        YEAR(NF.DATA_VENDA)                         -- Agrupa os resultados pelo ano da data da venda
) VA 
ON 
    VS.ANO = VA.ANO;                              -- Junta as duas subconsultas onde o ano é igual


-- Consulta que obtém o total de vendas por sabor e ano, considerando apenas o ano de 2015
SELECT VS.SABOR, VS.ANO, VS.VENDA_ANO, VA.VENDA_TOTAL_ANO 
FROM (
    -- Subconsulta para calcular a venda anual por sabor
    SELECT TP.SABOR, 
           YEAR(NF.DATA_VENDA) AS ANO, 
           SUM(INF.QUANTIDADE) AS VENDA_ANO 
    FROM TABELA_DE_PRODUTOS TP 
    INNER JOIN ITENS_NOTAS_FISCAIS INF 
        ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO 
    INNER JOIN NOTAS_FISCAIS NF 
        ON INF.NUMERO = NF.NUMERO 
    WHERE YEAR(NF.DATA_VENDA) = 2015 -- Filtra apenas o ano de 2015
    GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA) -- Agrupa os resultados por sabor e ano
) VS 
INNER JOIN (
    -- Subconsulta para calcular a venda total do ano de 2015
    SELECT YEAR(NF.DATA_VENDA) AS ANO, 
           SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO 
    FROM NOTAS_FISCAIS NF 
    INNER JOIN ITENS_NOTAS_FISCAIS INF 
        ON NF.NUMERO = INF.NUMERO 
    WHERE YEAR(NF.DATA_VENDA) = 2015 -- Filtra apenas o ano de 2015
    GROUP BY YEAR(NF.DATA_VENDA) -- Agrupa os resultados por ano
) VA 
ON VS.ANO = VA.ANO -- Faz a junção entre as subconsultas com base no ano
ORDER BY VS.VENDA_ANO DESC; -- Ordena os resultados pela quantidade de vendas em ordem decrescente

-- Segunda consulta que calcula o percentual de vendas por sabor em relação à venda total do ano
SELECT VS.SABOR, VS.ANO, VS.VENDA_ANO, VA.VENDA_TOTAL_ANO, 
       (VS.VENDA_ANO / VA.VENDA_TOTAL_ANO) * 100 AS PERCENTUAL 
FROM (
    -- Subconsulta para calcular a venda anual por sabor
    SELECT TP.SABOR, 
           YEAR(NF.DATA_VENDA) AS ANO, 
           SUM(INF.QUANTIDADE) AS VENDA_ANO 
    FROM TABELA_DE_PRODUTOS TP 
    INNER JOIN ITENS_NOTAS_FISCAIS INF 
        ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO 
    INNER JOIN NOTAS_FISCAIS NF 
        ON INF.NUMERO = NF.NUMERO 
    WHERE YEAR(NF.DATA_VENDA) = 2015 -- Filtra apenas o ano de 2015
    GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA) -- Agrupa os resultados por sabor e ano
) VS 
INNER JOIN (
    -- Subconsulta para calcular a venda total do ano de 2015
    SELECT YEAR(NF.DATA_VENDA) AS ANO, 
           SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO 
    FROM NOTAS_FISCAIS NF 
    INNER JOIN ITENS_NOTAS_FISCAIS INF 
        ON NF.NUMERO = INF.NUMERO 
    WHERE YEAR(NF.DATA_VENDA) = 2015 -- Filtra apenas o ano de 2015
    GROUP BY YEAR(NF.DATA_VENDA) -- Agrupa os resultados por ano
) VA 
ON VS.ANO = VA.ANO -- Faz a junção entre as subconsultas com base no ano
ORDER BY VS.VENDA_ANO DESC; -- Ordena os resultados pela quantidade de vendas em ordem decrescente

-- Primeiro SELECT: Obtém a venda de cada sabor de produto e calcula o percentual de venda em relação à venda total para o ano de 2015
SELECT VS.SABOR,               -- Seleciona o sabor do produto
       VS.ANO,                 -- Seleciona o ano da venda
       VS.VENDA_ANO,          -- Seleciona a quantidade vendida de cada sabor no ano
       VA.VENDA_TOTAL_ANO,    -- Seleciona a quantidade total vendida no ano
       ROUND((CONVERT(FLOAT, VS.VENDA_ANO) / CONVERT(FLOAT, VA.VENDA_TOTAL_ANO)) * 100, 2) AS PERCENTUAL -- Calcula o percentual de vendas de cada sabor em relação à venda total e arredonda para 2 casas decimais
FROM (
    -- Subconsulta para calcular a quantidade vendida de cada sabor no ano de 2015
    SELECT TP.SABOR,                                -- Seleciona o sabor do produto
           YEAR(NF.DATA_VENDA) AS ANO,             -- Extrai o ano da data da venda
           SUM(INF.QUANTIDADE) AS VENDA_ANO         -- Soma a quantidade vendida de cada sabor
    FROM TABELA_DE_PRODUTOS TP                       -- Tabela de produtos
    INNER JOIN ITENS_NOTAS_FISCAIS INF               -- Junção com a tabela de itens de notas fiscais
        ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO -- Condição de junção pelo código do produto
    INNER JOIN NOTAS_FISCAIS NF                       -- Junção com a tabela de notas fiscais
        ON INF.NUMERO = NF.NUMERO                     -- Condição de junção pelo número da nota fiscal
    WHERE YEAR(NF.DATA_VENDA) = 2015                 -- Filtra as vendas do ano de 2015
    GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)          -- Agrupa os resultados por sabor e ano
) VS 
INNER JOIN (
    -- Subconsulta para calcular a venda total no ano de 2015
    SELECT YEAR(NF.DATA_VENDA) AS ANO,               -- Extrai o ano da data da venda
           SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO    -- Soma a quantidade total vendida no ano
    FROM NOTAS_FISCAIS NF                             -- Tabela de notas fiscais
    INNER JOIN ITENS_NOTAS_FISCAIS INF               -- Junção com a tabela de itens de notas fiscais
        ON NF.NUMERO = INF.NUMERO                     -- Condição de junção pelo número da nota fiscal
    WHERE YEAR(NF.DATA_VENDA) = 2015                 -- Filtra as vendas do ano de 2015
    GROUP BY YEAR(NF.DATA_VENDA)                     -- Agrupa os resultados apenas por ano
) VA 
ON VS.ANO = VA.ANO                                   -- Faz a junção das duas subconsultas pelo ano
ORDER BY VS.VENDA_ANO DESC;                          -- Ordena os resultados pela quantidade vendida de cada sabor em ordem decrescente

-- Segundo SELECT: Repete o cálculo de percentual de venda, mas omite a venda total no resultado
SELECT VS.SABOR,               -- Seleciona o sabor do produto
       VS.ANO,                 -- Seleciona o ano da venda
       VS.VENDA_ANO,          -- Seleciona a quantidade vendida de cada sabor no ano
       ROUND((CONVERT(FLOAT, VS.VENDA_ANO) / CONVERT(FLOAT, VA.VENDA_TOTAL_ANO)) * 100, 2) AS PERCENTUAL -- Calcula o percentual de vendas de cada sabor em relação à venda total e arredonda para 2 casas decimais
FROM (
    -- Subconsulta para calcular a quantidade vendida de cada sabor no ano de 2015
    SELECT TP.SABOR,                                -- Seleciona o sabor do produto
           YEAR(NF.DATA_VENDA) AS ANO,             -- Extrai o ano da data da venda
           SUM(INF.QUANTIDADE) AS VENDA_ANO         -- Soma a quantidade vendida de cada sabor
    FROM TABELA_DE_PRODUTOS TP                       -- Tabela de produtos
    INNER JOIN ITENS_NOTAS_FISCAIS INF               -- Junção com a tabela de itens de notas fiscais
        ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO -- Condição de junção pelo código do produto
    INNER JOIN NOTAS_FISCAIS NF                       -- Junção com a tabela de notas fiscais
        ON INF.NUMERO = NF.NUMERO                     -- Condição de junção pelo número da nota fiscal
    WHERE YEAR(NF.DATA_VENDA) = 2015                 -- Filtra as vendas do ano de 2015
    GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)          -- Agrupa os resultados por sabor e ano
) VS 
INNER JOIN (
    -- Subconsulta para calcular a venda total no ano de 2015
    SELECT YEAR(NF.DATA_VENDA) AS ANO,               -- Extrai o ano da data da venda
           SUM(INF.QUANTIDADE) AS VENDA_TOTAL_ANO    -- Soma a quantidade total vendida no ano
    FROM NOTAS_FISCAIS NF                             -- Tabela de notas fiscais
    INNER JOIN ITENS_NOTAS_FISCAIS INF               -- Junção com a tabela de itens de notas fiscais
        ON NF.NUMERO = INF.NUMERO                     -- Condição de junção pelo número da nota fiscal
    WHERE YEAR(NF.DATA_VENDA) = 2015                 -- Filtra as vendas do ano de 2015
    GROUP BY YEAR(NF.DATA_VENDA)                     -- Agrupa os resultados apenas por ano
) VA 
ON VS.ANO = VA.ANO                                   -- Faz a junção das duas subconsultas pelo ano
ORDER BY VS.VENDA_ANO DESC;                          -- Ordena os resultados pela quantidade vendida de cada sabor em ordem decrescente
