# Selecionando dados das tabelas
SELECT
	*
FROM
	tipos_produtos;

SELECT
	*
FROM
	produtos;

# Consultas em multiplas tabelas
SELECT
	p.codigo 			AS 'Código'
  , p.descricao 		AS 'Descrição'
  , p.preco 			AS 'Preço'
  , tp.descricao 		AS 'Tipo Produto'
FROM
	produtos 			AS p
  , tipos_produtos 		AS tp
WHERE
	p.codigo_tipo = tp.codigo;
