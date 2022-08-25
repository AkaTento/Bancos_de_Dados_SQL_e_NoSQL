# DDL

# Criando um banco de dados
CREATE DATABASE IF NOT EXISTS
	meudb;

# Escolhendo um banco de dados
USE
	meudb;

# Criando uma tabela pessoa no banco de dados meudb 
CREATE TABLE IF NOT EXISTS pessoas
(
	id INT NOT NULL AUTO_INCREMENT
  , nome VARCHAR(100) NOT NULL
  , PRIMARY KEY (id)
);

# Inserindo dados da na tabela pessoas
INSERT INTO pessoas
(
	nome
)
VALUES (
	'Felicity Jones'
);

# Selecionando dados da tabela pessoas
SELECT
	*
FROM
	pessoas;

# Alterando dados da tabela pessoa
ALTER TABLE
	pessoas
ADD
	ano_nascimento INT;

ALTER TABLE
	pessoas
ADD
	mes_nascimento INT NOT NULL DEFAULT 1;

# Apagando a tabela pessoas
DROP TABLE
	pessoas;

# Apagando o banco de dados meudb
DROP DATABASE
	meudb;