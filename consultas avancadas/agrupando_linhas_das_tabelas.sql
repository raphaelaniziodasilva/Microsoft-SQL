-- O GROUP BY é uma cláusula SQL usada para agrupar linhas que compartilham valores em uma ou mais colunas, permitindo que funções de agregação, como SUM (soma), AVG (média), COUNT (contagem), MIN (mínimo) e MAX (máximo), sejam aplicadas a essas linhas agrupadas.

-- Essencialmente, o GROUP BY permite que você organize seus dados em grupos com base em uma ou mais colunas, e dentro de cada grupo, você pode realizar cálculos agregados.

-- Quando você utiliza o GROUP BY, os resultados são agrupados com base em uma coluna (ou colunas), e o cálculo da função agregada será aplicado a cada grupo individualmente.


-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES'
SELECT * FROM TABELA_DE_CLIENTES;

-- Seleciona as colunas 'CIDADE' e 'IDADE' da tabela 'TABELA_DE_CLIENTES'
SELECT CIDADE, IDADE FROM TABELA_DE_CLIENTES;

-- Seleciona as colunas 'CIDADE' e 'IDADE' da tabela 'TABELA_DE_CLIENTES' e ordena os resultados por 'CIDADE' e 'IDADE' em ordem crescente
SELECT CIDADE, IDADE FROM TABELA_DE_CLIENTES ORDER BY CIDADE, IDADE;

-- Agrupa os clientes por 'CIDADE' e calcula a soma das idades dos clientes de cada cidade
SELECT CIDADE, SUM(IDADE) AS idade FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

-- Agrupa os clientes por 'CIDADE', calculando a soma das idades e o limite de crédito dos clientes de cada cidade
SELECT CIDADE, SUM(IDADE) AS idade, SUM(LIMITE_DE_CREDITO) AS credito FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

-- Agrupa os clientes por 'CIDADE', calculando a média das idades e a soma do limite de crédito dos clientes de cada cidade
SELECT CIDADE, AVG(IDADE) AS IDADE, SUM(LIMITE_DE_CREDITO) AS CREDITO FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

-- Agrupa os clientes por 'CIDADE' e conta o número de clientes em cada cidade
SELECT CIDADE, COUNT(*) AS NUMERO_DE_CLIENTES FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

-- Agrupa os produtos por 'EMBALAGEM' e conta o número de produtos onde o sabor é 'Laranja'
SELECT EMBALAGEM, COUNT(*) AS NUMERO_DE_CLIENTES FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja' GROUP BY EMBALAGEM;


-- Agrupar linhas que têm valores iguais em uma ou mais colunas.
-- Aplicar funções de agregação em cada grupo de linhas, como somar, contar ou calcular a média de valores dentro de cada grupo.