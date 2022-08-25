-- Criando Banco de Dados secao_05
CREATE DATABASE IF NOT EXISTS
    secao_05;

-- Criando Tabela Tipos Produto
CREATE TABLE IF NOT EXISTS tipos_produto
(
    codigo SERIAL PRIMARY KEY
  , descricao VARCHAR(30) NOT NULL 
);

-- Criando Tabela Produtos
CREATE TABLE IF NOT EXISTS produtos
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
  tipos_produto
WHERE
  codigo = 1;

SELECT
  *
FROM
  tipos_produto
WHERE
  codigo = 2;

-- Selecionando Dados da Tabela Produto
SELECT
  *
FROM
  produtos
WHERE
  descricao = 'Laptop';

SELECT
  *
FROM
  produtos
WHERE
  descricao = 'Laptop';

SELECT
  *
FROM
  produtos
WHERE
  preco <= '$500';