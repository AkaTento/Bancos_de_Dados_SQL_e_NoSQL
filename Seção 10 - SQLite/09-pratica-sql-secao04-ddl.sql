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

-- Adicionado uma nova coluna peso na tabela tipos_produtos
ALTER TABLE
	tipos_produtos
ADD
	peso REAL;

-- Verificando se o novo campo foi realmente adicionado
SELECT
	*
FROM
	tipos_produtos;

-- Apagando a tabela tipos_produtos 
DROP TABLE
	tipos_produtos;

-- Não existe o comando abaixo no SQLite. Basta deletar o arquivo do banco de dados;
DROP DATABASE
	secao04;