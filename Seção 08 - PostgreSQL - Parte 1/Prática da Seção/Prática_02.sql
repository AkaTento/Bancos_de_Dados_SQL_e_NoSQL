-- Inserindo Dados na Tabela Tipos Produto
INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Computadores'
);

INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Impressoras'
);

INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Diversos'
);

-- Selecionando Dados da Tabela Tipos Produto
SELECT
    *
FROM
    tipos_produto;

-- Inserindo Dados na Tabela Produtos
INSERT INTO produto
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Notebook DEL 1544'
   , 2345.67
   , 1
);

INSERT INTO produto
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Impr. Jato de Tinta'
   , 456.00
   , 2
);

INSERT INTO produto
(
    descricao
  , preco
  , id_tipo_produto
) VALUES (
    'Mouse sem fio'
   , 45
   , 3
);

-- Selecionando Dados da Tabela Produto
SELECT
    *
FROM
    produto;

-- Inserindo Dados na Tabela Pacientes
INSERT INTO pacienteS
(
    nome
  , endereco
  , bairro
  , cidade
  , estado
  , cep
  , data_nascimento
) VALUES (
    'Felicity Smoke'
    , 'Rua da paz, 44'
    , 'Nova Lima'
    , 'Santos'
    , 'SP'
    , '121213213'
    , '1978-04-24' 
);