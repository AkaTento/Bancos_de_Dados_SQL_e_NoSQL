# Criando um banco de dados
CREATE DATABASE IF NOT EXISTS
	secao05;

# Escolhendo um banco de dados
USE
	secao05;

# Criando tabelas no banco de dados selecionado
CREATE TABLE tipos_produtos
(
	codigo INT NOT NULL AUTO_INCREMENT
  , descricao VARCHAR(30) NOT NULL
  , PRIMARY KEY (codigo)  
);

CREATE TABLE produtos
(
	codigo INT NOT NULL AUTO_INCREMENT
  , descricao VARCHAR(30) NOT NULL
  , preco DECIMAL(8,2) NOT NULL
  , codigo_tipo INT NOT NULL
  , PRIMARY KEY (codigo)
  , FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);

# Inserindo dados nas tabelas criadas acima
INSERT INTO tipos_produtos 
(
  descricao
) VALUES (
  'Computador'
);

INSERT INTO tipos_produtos 
(
  descricao
) VALUES (
  'Impressora'
);

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
, 1
);

# Selecionando dados usando o WHERE
SELECT
	*
FROM
	produtos
WHERE
	codigo_tipo = 1;

SELECT
	*
FROM
	produtos
WHERE
	codigo_tipo = 2
AND
	preco > 300;
    
	codigo_tipo = 2
AND
	preco > 300;
