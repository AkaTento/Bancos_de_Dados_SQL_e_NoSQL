-- Criando banco de dados agregacao
CREATE DATABASE IF NOT EXISTS
    agregacao;

-- Criando tabela categorias
CREATE TABLE IF NOT EXISTS categorias
(
    id SERIAL PRIMARY KEY
  , nome VARCHAR(60) NOT NULL
);

-- Criando tabela produtos
CREATE TABLE F NOT EXISTS produtos
(
    id SERIAL PRIMARY KEY
  , descricao VARCHAR(60) NOT NULL
  , preco_venda DECIMAL(8,2) NOT NULL
  , preco_custo MONEY NOT NULL
  , id_categoria INT REFERENCES categorias(id) NOT NULL
);

-- Inserindo dados na tabela categorias
INSERT INTO categorias
(
    nome
) VALUES (
    'Material Escolar'
);

INSERT INTO categorias
(
    nome
) VALUES (
    'Acessório Informática'
);

INSERT INTO categorias
(
    nome
) VALUES (
    'Material Escritório'
);

INSERT INTO categorias
(
    nome
) VALUES (
    'Game'
);

-- Inserindo dados na tabela produtos
INSERT INTO produtos
(
    descricao
  , preco_venda
  , preco_custo
  , id_categoria
) VALUES (
    'Caderno'
   , 5.45
   , 2.30
   , 1
);

INSERT INTO produtos
(
    descricao
  , preco_venda
  , preco_custo
  , id_categoria
) VALUES (
    'Caneta'
   , 1.20
   , 0.45
   , 1
);

INSERT INTO produtos
(
    descricao
  , preco_venda
  , preco_custo
  , id_categoria
) VALUES (
    'Pendrive 32GB'
   , 120.54
   , 32.55
   , 2
);

INSERT INTO produtos
(
    descricao
  , preco_venda
  , preco_custo
  , id_categoria
) VALUES (
    'Mouse'
   , 17.00
   , 4.30
   , 2
);

-- Selecionando dados da tabela produto utilizando o MAX
SELECT
    MAX(preco_venda)
FROM
    produtos;

-- Selecionando dados da tabela produto utilizando o MIN
SELECT
    MIN(preco_venda)
FROM
    produtos;

-- Selecionando dados da tabela produto utilizando o AVG
SELECT
    AVG(preco_venda)
FROM
    produtos;

-- Selecionando dados da tabela produto utilizando o AVG
SELECT
    TO_CHAR(AVG(preco_venda), '99999999D99') AS Média
FROM
    produtos;

-- Selecionando dados da tabela produto utilizando o AVG
SELECT
    ROUND(AVG(preco_venda)::NUMERIC, 2)
FROM
    produtos;

-- Selecionando dados da tabela produto utilizando o AVG
SELECT
    ROUND(AVG(preco_custo::NUMERIC), 2)
FROM
    produtos;

-- Selecionando dados da tabela produto utilizando o AVG
SELECT
    ROUND(AVG(preco_venda), 3)
FROM
    produtos;

-- Selecionando dados da tabela produto utilizando o COUNT
SELECT
    COUNT(preco_venda) AS Quantidade
FROM
    produtos
WHERE
    id_categoria = 1;

-- Selecionando dados da tabela produto utilizando o GROUP BY
SELECT
    id_categoria
  , MAX(preco_venda)
FROM
    produtos
GROUP BY
    id_categoria;

-- Selecionando dados da tabela produto utilizando o HAVING
SELECT
    id_categoria
  , MAX(preco_venda)
FROM
    produtos
GROUP BY
    id_categoria
HAVING
    MAX(preco_venda) > 10;