-- Iniciando uma Transação
BEGIN TRANSACTION;

-- Inserindo Valores na Tabela Tipos Produto
INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Equipamentos'
);

INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Nobreak'
);

-- Comitando a Transação e Encerrando
COMMIT;

-- Iniciando uma Transação
BEGIN TRANSACTION;

-- Inserindo Dados na Tabela Tipos Produto
INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Tipo A'
);

INSERT INTO tipos_produto
(
    descricao
) VALUES (
    'Tipo B'
);

-- Desfazer a Última Transação
ROLLBACK;