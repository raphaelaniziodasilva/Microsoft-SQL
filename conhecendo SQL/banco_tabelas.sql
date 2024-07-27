-- Cria o banco de dados 'SUCOS_VENDAS'
CREATE DATABASE [SUCOS_VENDAS]

-- Exclui o banco de dados 'SUCOS_VENDAS_2' (usado para remover um banco de dados existente)
DROP DATABASE [SUCOS_VENDAS_2]

-- Cria a tabela 'TABELA DE CLIENTES' para armazenar informações dos clientes
CREATE TABLE [TABELA DE CLIENTES](
    -- CPF do cliente, usado como identificador único
    [CPF] [CHAR] (11),
    -- Nome completo do cliente
    [NOME] [VARCHAR] (150),
    -- Rua do endereço do cliente
    [RUA] [VARCHAR] (150),
    -- Complemento do endereço do cliente
    [COMPLEMENTO] [VARCHAR] (150),
    -- Bairro do endereço do cliente
    [BAIRRO] [VARCHAR] (150),
    -- Estado (UF) do endereço do cliente
    [ESTADO] [CHAR] (2),
    -- Código postal (CEP) do endereço do cliente
    [CEP] [CHAR] (8),
    -- Data de nascimento do cliente
    [DATA DE NASCIMENTO] [DATE],
    -- Idade do cliente
    [IDADE] [SMALLINT],
    -- Sexo do cliente ('M' para masculino, 'F' para feminino)
    [SEXO] [CHAR] (1),
    -- Limite de crédito disponível para o cliente
    [LIMITE DE CREDITO] [MONEY],
    -- Volume mínimo de compra para o cliente
    [VOLUME MINIMIO] [FLOAT],
    -- Indica se é a primeira compra do cliente (1 para sim, 0 para não)
    [PRIMEIRA COMPRA] [BIT]
)

-- Cria a tabela 'TABELA DE PRODUTOS' para armazenar informações dos produtos
CREATE TABLE [TABELA DE PRODUTOS](
    -- Código único do produto, usado como chave primária
    [CODIGO DO PRODUTO] [VARCHAR] (20) NOT NULL PRIMARY KEY,
    -- Nome do produto
    [NOME DO PRODUTO] [VARCHAR] (50),
    -- Tipo de embalagem do produto
    [EMBALAGEM] [VARCHAR] (50),
    -- Tamanho do produto
    [TAMANHO] [VARCHAR] (50),
    -- Sabor do produto (se aplicável)
    [SABOR] [VARCHAR] (50),
    -- Preço de lista do produto
    [PRECO DE LISTA] [SMALLMONEY]
)

-- Modifica a coluna 'CPF' na tabela 'TABELA DE CLIENTES' para ser NOT NULL
ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] [CHAR] (11) NOT NULL;

-- Adiciona uma chave primária clusterizada à coluna 'CPF' na tabela 'TABELA DE CLIENTES'
ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_TABELA_CLIENTE PRIMARY KEY CLUSTERED ([CPF]);
