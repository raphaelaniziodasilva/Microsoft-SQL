-- Retorna a data e hora atual do sistema
SELECT GETDATE();

-- Retorna a data atual adicionando 10 dias
SELECT DATEADD(DAY, 10, GETDATE());

-- Retorna a data atual como 'DATA_HOJE' e a data atual mais 10 dias como 'DATA_DAQUI_10_DIAS'
SELECT GETDATE() AS DATA_HOJE, DATEADD(DAY, 10, GETDATE()) AS DATA_DAQUI_10_DIAS;

-- Retorna a data de 48 dias atrás a partir da data atual
SELECT DATEADD(DAY, -48, GETDATE()) AS DATA_48_DIAS_ATRAS;

-- Calcula o número de dias entre 1º de janeiro de 2022 e a data atual
SELECT DATEDIFF(DAY, '2022-01-01', GETDATE()) AS DIAS_DESDE_INICIO_ANO;

-- Calcula o número de horas entre 1º de janeiro de 2022 e a data atual
SELECT DATEDIFF(HOUR, '2022-01-01', GETDATE()) AS HORAS_DESDE_INICIO_ANO;

-- Calcula o número de meses entre 1º de janeiro de 2022 e a data atual
SELECT DATEDIFF(MONTH, '2022-01-01', GETDATE()) AS MESES_DESDE_INICIO_ANO;

-- Retorna o dia do mês da data atual
SELECT DATEPART(DAY, GETDATE()) AS DIA_DE_HOJE;

-- Verifica se a data construída é válida (no caso, 28 de fevereiro de 2022 às 00:00:00)
SELECT ISDATE(DATETIMEFROMPARTS(2022, 02, 28, 00, 00, 00, 00));
