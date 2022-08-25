-- Criando um Banco de Dados
CREATE DATABASE IF NOT EXISTS
    secao_04;

-- Criando Tabela tipos_produto
CREATE TABLE tipos_produto
(
    codigo SERIAL PRIMARY KEY
  , descricao VARCHAR(30) NOT NULL 
);

-- Criando Tabela Produtos
CREATE TABLE produtos
(
    codigo SERIAL PRIMARY KEY
  , descricao VARCHAR(30) NOT NULL
  , preco MONEY NOT NULL
  , codigo_tipo INT REFERENCES tipos_produto(codigo) NOT NULL
);

-- Inserindo Dados na Tabela Tipos Produto
INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Computadores'
);

INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Impressoras'
);

-- Inserindo Dados na Tabela Produtos
INSERT INTO produtos
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Desktop'
   , 1200
   , 1
);

INSERT INTO produtos
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Laptop'
   , 1800
   , 1
);

INSERT INTO produtos
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Impr. Jato Tinta'
   , 300
   , 2
);

INSERT INTO produtos
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Impr. Laser'
   , 500
   , 2
);

-- Selecionando Dados da Tabela Tipos Produto
SELECT
    *
FROM
    tipos_produto;

SELECT
    codigo
  , descricao
FROM
    tipos_produto;

-- Selecionando Dados da Tabela Produto
SELECT
    *
FROM
    produtos;

SELECT
    codigo
  , descricao
  , codigo_tipo
FROM
    produtos;

-- Selecionando Dados da Tabela Produtos e Utilizando o Alias
SELECT
    p.codigo        AS 'Código'
  , p.descricao     AS 'Descrição'
  , p.preco         AS 'Preço'
  , p.codigo_tipo   AS 'Código Tipo'
FROM
    produtos        AS p;