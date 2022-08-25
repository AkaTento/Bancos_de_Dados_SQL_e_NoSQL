-- Consulta em multiplas tabelas

-- Selecionando dados da tabela tipos_produto
SELECT
    * 
FROM
    tipos_produto;

-- Selecionando dados da tabela produto
SELECT
    *
FROM
    produtos;

-- Conulsta em multiplas tabelas
SELECT 
    p.codigo        AS 'Codigo'
  , p.descricao     AS 'Descricao'
  , p.preco         AS 'Preco'
  , tp.descricao    AS 'Tipo Produto' 
FROM
    produtos        AS p
  , tipos_produto   AS tp
WHERE
    p.codigo_tipo = tp.codigo;