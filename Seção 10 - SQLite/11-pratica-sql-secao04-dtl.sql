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

-- Vamos consultar os dados da tabela tipos_produto;
SELECT
	*
FROM
	tipos_produto;

-- Já temos a tabela tipos_produto, então podemos iniciar a transação;

-- Begin Transaction 
BEGIN TRANSACTION;

	INSERT INTO tipos_produto
	(
		descricao
	) VALUES (
		'Notebook'
	);
	
	INSERT INTO tipos_produto
	(
		descricao
	) VALUES (
		'Nobreak'
	);

-- Commit
COMMIT;

-- Vamos checar se os dados foram realmente salvos:
SELECT
	*
FROM
	tipos_produto;

-- Roll Back

-- Vamos iniciar uma nova transação
BEGIN TRANSACTION;

-- Inserir uns dados (poderia ser insert, update, delete, etc)
INSERT INTO tipos_produto
(
	descricao
) VALUES (
	'Tablet'
);

INSERT INTO tipos_produto
(
	descricao
) VALUES (
	'Baterias'
);

-- Vamos checar se os dados foram salvos mesmo sem o commit:
SELECT
	*
FROM
	tipos_produto;

/* Veja que aparentemente tudo está funcionando normalmente. Mas se tivéssemos efetuado o commit
não teríamos como fazer o rollback; */

c) Efetuando o roll back
ROLLBACK;

-- Vamos checar se os dados foram desfeitos pelo rollback:
SELECT
	*
FROM
	tipos_produto;

-- Sim!

/* OBS: Como o campo id da tabela é auto incremento, os dois inserts que fizemos descartaram 
os valores dos campos removidos. Isso significa que os ids utilizamos não serão reutilizados.

Só para efeito de comparação, vamos iniciar uma nova transação, inserir dados e commitar e então 
tentar o rollback */

-- Vamos iniciar uma nova transação
BEGIN TRANSACTION;

-- Inserir uns dados (poderia ser insert, update, delete, etc)
INSERT INTO tipos_produto
(
	descricao
) VALUES (
	'Tablet'
);

INSERT INTO tipos_produto
(
	descricao
) VALUES (
	'Baterias'
);

-- Commitar
COMMIT;

-- Consultar os dados
SELECT
	*
FROM
	tipos_produto;

-- Tentar o rollback (Não é possível efetuar o rollback após commitar)
ROLLBACK;

-- Consultar os dados
SELECT
	*
FROM
	tipos_produto;

--Note que a transação não foi desfeita.