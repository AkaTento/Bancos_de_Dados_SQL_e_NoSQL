-- Criando banco de dados secao05
CREATE DATABASE
	secao05;

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

-- Inserindo dados na tabela Produtos
INSERT INTO produtos
(
	descricao.
  , preco
  , id_tipo_produto
) VALUES (
	'Desktop'
  , 1200
  , 1
);

INSERT INTO produtos
(
	descricao.
  , preco
  , id_tipo_produto
) VALUES (
	'Laptop'
  , 300
  , 2
);

INSERT INTO produtos
(
	descricao.
  , preco
  , id_tipo_produto
) VALUES (
	'Impr. Jato Tinta'
  , 500
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

-- Selecionando dados da tabela tipos_produto
SELECT
	*
FROM
	tipos_produto
WHERE
	codigo = 1;

-- Selecionando dados da tabela tipos_produto
SELECT
	codigo
  , descricao
FROM
	tipos_produto
WHERE
	descricao = 'Computador';

-- Selecionando dados da tabela produto
SELECT
	*
FROM
	produtos
WHERE
	preco <= 300;

-- Selecionando dados da tabela produto
SELECT
	codigo
  , descricao
  , codigo_tipo
FROM
	produtos
WHERE
	descricao = 'Laptop';

-- -- Selecionando dados da tabela produto utilizando o alias
SELECT 
	p.codigo 	AS cod
  , p.descricao AS desc
  , p.preco 	AS pre
  , p.codigo 	AS ctp 
FROM
	produtos 	AS p 
WHERE
	p.codigo = 3;