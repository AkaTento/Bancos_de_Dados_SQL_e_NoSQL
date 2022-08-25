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

INSERT INTO tipos_produtos
(
	descricao
) VALUES (
	'Notebook'
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

INSERT INTO produtos
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Notebook'
  , 1200
  , 1
);

INSERT INTO produtos
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'IPad'
  , '2600'
  , 1
);

-- Atualizando dados da tabela tipos_produtos
UPDATE
    tipos_produtos 
SET
    descricao = 'Nobreak'
WHERE
    id = 3;

-- Atualizando dado da tabela descricao
UPDATE
    produtos
SET
    descricao = 'Notebook'
  , preco = '2800'
WHERE
    id = 2;

-- Cuidado Update (sem o WHERE)

-- O MySQL Workbench não irá permitir, mas se fosse utilizando uma linguagem de programação, já era.
UPDATE
    produtos
SET
    descricao = 'Notebook'
  , preco = '2800';

-- Apagando dados da tabela tipos_produto
DELETE FROM
    tipos_produtos
WHERE
    id = 3;

-- Cuidado Delete (sem o WHERE)

-- O MySQL Workbench não irá permitir, mas se fosse utilizando uma linguagem de programação, já era.
DELETE FROM
    produtos;