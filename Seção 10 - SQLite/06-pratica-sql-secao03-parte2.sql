-- INSERTS

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
	'Diversos'
);

-- Inserindo dados na tabela Produtos
INSERT INTO produtos
(
	descricao.
  , preco
  , id_tipo_produto
) VALUES (
	'Notebook DELL 1544'
  , 2345.67
  , 1
);

INSERT INTO produtos
(
	descricao.
  , preco
  , id_tipo_produto
) VALUES (
	'Impr. Jato de Tinta'
  , 456.00
  , 2
);

INSERT INTO produtos
(
	descricao.
  , preco
  , id_tipo_produto
) VALUES (
	'Mouse sem fio'
  , 45
  , 3
);

-- Inserindo dados na tabela Pacientes
INSERT INTO pacientes
(
	nome
  , endereco
  , bairro
  , cidade
  , estado
  , cep
  , data_nascimento
) VALUES (
	'Angelina Jolie'
  , 'Rua da paz, 44'
  , 'Nova Lima'
  , 'Santos'
  , 'SP', '121213213'
  , '1978-04-24'
);

-- Inserindo dados na tabela Professor
INSERT INTO professor
(
	telefone
  , nome
) VALUES (
	12345
 , 'Fernando Perez'
);

-- Inserindo dados na tabela TURMA 
INSERT INTO turma
(
	capacidade
  , id_professor
) VALUES (
	50
  , 1
);

-- Selecinando dados da tabela tipos_produtos
SELECT
	*
FROM 
	tipos_produtos;

-- Selecinando dados da tabela produtos
SELECT
	*
FROM
	produtos;

-- Selecinando dados da tabela pacientes
SELECT
	*
FROM
	pacientes;

-- Selecinando dados da tabela professor
SELECT
	*
FROM
	professor;

-- Selecinando dados da tabela turma
SELECT
	*
FROM
	turma;