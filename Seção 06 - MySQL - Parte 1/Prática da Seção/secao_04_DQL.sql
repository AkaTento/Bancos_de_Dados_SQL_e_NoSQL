/* Criando uma Banco de Dados */
CREATE DATABASE 
	secao04;


/* Escolhendo um banco de Dados */
USE 
	secao04;


/* Criando as Tabelas */
CREATE TABLE tipos_produtos
(
	codigo INT NOT NULL AUTO_INCREMENT
  , descricao VARCHAR(30) NOT NULL
  , PRIMARY KEY(codigo)
);


CREATE TABLE produtos
(
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY
  , descricao VARCHAR(30) NOT NULL
  , preco DECIMAL(8,2) NOT NULL
  , codigo_tipo INT NOT NULL
  , FOREIGN KEY (codigo_tipo) REFERENCES tipos_produtos(codigo)  
);


/* Inserindo dados nas tabelas */
INSERT INTO tipos_produtos (descricao) VALUES ('computadores');
INSERT INTO tipos_produtos (descricao) VALUES ('Impressoras');
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', '1800', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato de Tinta', '300', 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', '500', 2);


/* Selecionando dados das tabelas */
SELECT 
    *
FROM
    tipos_produtos;


SELECT 
    codigo
  , descricao
FROM
    produtos;


SELECT
	descricao
FROM
	produtos;


SELECT 
    descricao
  , codigo
FROM
    tipos_produtos;


SELECT
	codigo
  , descricao
  , preco
  , codigo_tipo
FROM
	produtos;


/* Colocando um ALIAS - Apelido */
SELECT
	p.codigo AS 'Código'
  , p.descricao AS 'Descrição'
  , p.preco AS 'Preço'
  , p.codigo_tipo AS 'Código Tipo'
FROM
	produtos AS p;
