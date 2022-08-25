# DML

/* Inserindo dados na tabela produtos */
INSERT INTO produtos 
(
	descricao
  , preco
  , codigo_tipo
) VALUES (
	'Notebook'
  , '1200'
  , 1
);

INSERT INTO produtos 
VALUES (
	NULL
  , 'Macbook Pro'
  , '7200'
  , 1
);

INSERT INTO tipos_produtos
(
	descricao
) VALUES (
	'Apple'
);

INSERT INTO 
	produtos
VALUES 
(
	NULL
 , 'Ipad'
 , '2200'
 , 3
);

/* Selecionando dados da tabela produtos */
SELECT
	*
FROM
	produtos;

/* Atualizando dados da tabela produto */
UPDATE
	produtos
SET
	codigo_tipo = 3
WHERE
    codigo = 6;

UPDATE
	produtos
SET
	descricao = 'Impressora Laser'
  , preco = '700'
WHERE
	codigo = 4;

# Nunca esqueça de filtrar os registro com o WHERE!!!
UPDATE
	produtos
SET
	preco = '150';

/* Apagando dados da tabela */
# Nunca esqueça de filtrar os registro com o WHERE!!!
DELETE FROM
	produtos
WHERE
	codigo = 4;