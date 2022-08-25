-- Selecionando dados da tabela tipos produtos
SELECT
	*
FROM
	tipos_produto;


-- Selecionando dados da tabela produtos
SELECT
	*
FROM
	produtos;

-- Selecionando dados das duas tabelas tipos produto e produtos
SELECT
    p.codigo            AS Código
  , p.descricao         AS Descrição
  , p.preco             AS Preço
  , tp.descricao        AS Tipo
FROM
    produtos            AS p
  , tipos_produto       AS tp
WHERE
    p.codigo_tipo = tp.codigo;