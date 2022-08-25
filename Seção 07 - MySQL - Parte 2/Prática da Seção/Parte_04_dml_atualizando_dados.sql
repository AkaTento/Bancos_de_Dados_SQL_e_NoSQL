# Atualizando Dados

UPDATE
	tipos_produtos
SET
	tipo = 'Bijuterias'
WHERE
	id = 3;

# Selecionando Dados da Tabela
SELECT
	*
FROM
	tipos_produtos;

# Atualizando Dados da Tabela Produtos
UPDATE
	produtos
SET
	preco_venda = '4.16'
  , id_tipo_produto = 1
  , id_fabricante = 1
WHERE
	id = 2;

# Selecionando Dados da Tabela
SELECT
	*
FROM
	produtos;    