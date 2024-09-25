-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES'
SELECT * FROM TABELA_DE_CLIENTES;

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a idade é maior que 23
SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE > 23;

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a idade é maior ou igual a 23
SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE >= 23;

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a idade é menor que 20
SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE < 20;

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a idade é menor ou igual a 20
SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE <= 20;

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a idade é diferente de 20
SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE <> 20;

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a data de nascimento é maior ou igual a '1994-11-14'
SELECT * FROM TABELA_DE_CLIENTES WHERE DATA_DE_NASCIMENTO >= '1994-11-14';

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a data de nascimento é anterior a '1994-11-14'
SELECT * FROM TABELA_DE_CLIENTES WHERE DATA_DE_NASCIMENTO < '1994-11-14';

-- Seleciona todas as colunas da tabela 'TABELA_DE_CLIENTES' onde a data de nascimento é diferente de '1994-11-14'
SELECT * FROM TABELA_DE_CLIENTES WHERE DATA_DE_NASCIMENTO <> '1994-11-14';