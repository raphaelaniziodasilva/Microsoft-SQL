-- CRIAR BANCO DE DADOS
CREATE DATABASE SUCOS_VENDAS;

-- EXCLUIR BANCO DE DADOS]
DROP DATABASE SUCOS_VENDAS_2;

/* -- CRIAR TABELA DE CLIENTES
Colunas: CPF, Nome completo, Endere�o completo, Data de nascimento, Idade, Sexo, Limite de cr�dito,
Volume m�nimo de compra de produto, Se j� realizou alguma compra na empresa
*/
CREATE TABLE [TABELA DE CLIENTES](
[CPF] [CHAR] (11),
[NOME] [VARCHAR] (150),
[RUA] [VARCHAR] (150),
[COMPLEMENTO] [VARCHAR] (150),
[BAIRRO] [VARCHAR] (150),
[ESTADO] [CHAR] (2),
[CEP] [CHAR] (8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),
[LIMITE DE CREDITO] [MONEY],
[VOLUME MINIMO] [FLOAT],
[PRIMEIRA COMPRA] [BIT]
);

/* -- CRIAR TABELA PRODUTOS
Colunas: C�digo de produto, Nome do produto, Embalagem, Tamanho, Sabor, Pre�o de lista
*/
CREATE TABLE [TABELA DE PRODUTOS](
[CODIGO DO PRODUTO] [VARCHAR] (20) NOT NULL PRIMARY KEY,
[NOME DO PRODUTO] [VARCHAR] (50),
[EMBALAGEM] [VARCHAR] (50),
[TAMANHO] [VARCHAR] (50),
[SABOR] [VARCHAR] (50),
[PRECO DE LISTA] [SMALLMONEY]
);

-- ALTERA��O DA TABELA
ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] [CHAR] (11) NOT NULL;
ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_TABELA_CLIENTE
PRIMARY KEY CLUSTERED ([CPF]);
