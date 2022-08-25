-- Inserindo Dados na Tabela Tipos Produto
INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Notebook'
);

-- Inserindo Dados na Tabela Produtos
INSERT INTO produtos
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Notebook'
   , 1200
   , 1
);

-- Atualizado Dados na Tabela Tipos Produto
UPDATE
    tipos_produto
SET
    descricao = 'Nobreak'
WHERE
    codigo = 3;

-- Apagando Dados da tabela Tipos Produto
DELETE FROM
    tipos_produto
WHERE
    codigo = 3;

-- Apagando Dados da Tabela Produtos
DELETE FROM
    produtos
WHERE
    codigo = 2;