-- Criando banco de dados secao04
CREATE DATABASE
	secao04;

-- Criando tabela tipos_produtos
CREATE TABLE tipos_produtos
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	descricao TEXT NOT NULL 
);

-- Criando tabela produtos
CREATE TABLE produtos
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	descricao TEXT NOT NULL,
	preco REAL NOT NULL,
	id_tipo_produto INTEGER REFERENCES tipos_produtos(id) NOT NULL
);

-- Inserindo dados na tabela Tipos Produto
INSERT INTO tipos_produtos
(
	descricao
) VALUES (
	'Computadores'
);

INSERT INTO tipos_produtos
(
	descricao
) VALUES (
	'Impressoras'
);

-- Inserindo dados na tabela produto
INSERT INTO produtos
(
	descricao
  , preco
  , codigo_tipo
) VALUES (
	'Desktop'
  , '1200'
  , 1
);

INSERT INTO produtos
(
	descricao
  , preco
  , codigo_tipo
) VALUES (
	'Laptop'
  , '1800'
  , 1
);

INSERT INTO produtos
(
	descricao
  , preco
  , codigo_tipo
) VALUES (
	'Impr. Jato Tinta'
  , '300'
  , 2
);

INSERT INTO produtos
(
	descricao
  , preco
  , codigo_tipo
) VALUES (
	'Impr. Laser'
  , '500'
  , 2
);

-- Selecionando dados da tabela tipos_produto
SELECT
	*
FROM
	tipos_produto;

-- Selecionando dados da tabela tipos_produto
SELECT
	codigo
  , descricao
FROM
	tipos_produto;

-- Selecionando dados da tabela produtos
SELECT
	*
FROM
	produtos;

-- Selecionando dados da tabela produtos
SELECT
	codigo
  , descricao
  , codigo_tipo
FROM
	produtos;

-- Selecionando dados da tabela
SELECT
	p.codigo 		AS cod
  , p.descricao 	AS descr
  , p.preco 		AS pre
  , p.codigo_tipo 	AS ctp
FROM
	produtos 		AS p;