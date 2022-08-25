-- SELECT * FROM tipos_produto;

-- SELECT * FROM produtos;

SELECT p.codigo, p.descricao, p.preco, tp.descricao AS Tipo
	FROM produtos AS p, tipos_produto AS tp
    WHERE p.codigo_tipo = tp.codigo;