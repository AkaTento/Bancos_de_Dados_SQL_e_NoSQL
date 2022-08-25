-- Alterando Dados da Tabela Tipos Produto
ALTER TABLE
    tipos_produto
ADD
    peso DECIMAL(8,2);

-- Verificando se o Campo foi Adicionado na Tabela TIpos Produto
SELECT
    *
FROM
    tipos_produto;

-- Apagando a Tabela Tipos Produto
DROP TABLE
    tipos_produto;

-- Apagando o Banco de Dados secao_03
DROP DATABASE
    secao_03;