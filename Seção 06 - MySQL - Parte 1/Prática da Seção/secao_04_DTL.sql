# DTL

-- Transaction
START TRANSACTION;
	INSERT INTO tipos_produtos (descricao) VALUES ('Acessórios');
    INSERT INTO tipos_produtos (descricao) VALUES ('Equipamento');
-- commit
COMMIT;

-- Rollback
ROLLBACK;

# Selecionando dados da tabela tipos_produtos
SELECT
	*
FROM
	tipos_produtos;

-- Transaction
START TRANSACTION;
	INSERT INTO tipos_produtos (descricao) VALUES ('Farmacia');
    INSERT INTO tipos_produtos (descricao) VALUES ('Escritorio');
-- commit
COMMIT;