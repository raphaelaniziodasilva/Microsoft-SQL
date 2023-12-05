/* Adicionando produto
'1040107' = codigo do produto,
'Ligth' - 350 ml = Melância, nome do produto
'Lata' = embalagem
'350 ml' = tamanho
'Melancia' = sabor
4.56 = preço lista
*/
INSERT INTO [TABELA DE PRODUTOS] VALUES (
'1040107',
'Ligth',
'Lata',
'350 ml',
'Melancia',
4.56
);

-- Adicionando mais 4 produtos
INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRECO DE LISTA])
VALUES 
('1033187', 'Uva', 'Litros', '2 Litros', 'Uva', 14.56),
('1110100', 'Manga', 'Garafa', '700 ml', 'Melancia', 4.56),
('1034587', 'Caju', 'Litros', '1.5 Litros', 'Caju', 4.56),
('1043214', 'Ligth', 'Lata', '350 ml', 'Melancia', 4.56);

-- Adicionando 2 Clientes
INSERT INTO [TABELA DE CLIENTES]
([CPF], [NOME], [RUA], [COMPLEMENTO], [BAIRRO], [ESTADO], [CEP], [DATA DE NASCIMENTO],
[IDADE], [SEXO], [LIMITE DE CREDITO], [VOLUME MINIMO], [PRIMEIRA COMPRA])
VALUES
('1033187', 'Nobara', 'Tokio animes', 'Numero 323', 'Tokio', 'JP', '01032001',
'2000-03-21', 23, 'F', 200000, 3000.10, 1),
('1043214', 'Itadori Yugi', 'Tokio animes', 'Numero 323', 'Tokio', 'JP', '01032001',
'2002-03-21', 20, 'M', 200000, 3000.10, 0);

/* Criando a tabela de vendedores
Colunas: Matrícula, Nome, Comissão
*/
CREATE TABLE [TABELA DE VENDEDORES](
[MATRICULA] [VARCHAR] (20) NOT NULL PRIMARY KEY,
[NOME] [VARCHAR] (50),
[COMISSAO] [INT]
);

-- Adicionando 3 vendedores
INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [COMISSAO]) VALUES
('00236', 'Cláudia Morais', 8),
('00237', 'Marcela Ferreira', 9),
('00238', 'Márcio Almeida', 7);

