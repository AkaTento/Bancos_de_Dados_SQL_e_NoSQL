# Realizando consulta simples

# Tabela Tipos Produtos
SELECT
	*
FROM
	tipos_produtos;

SELECT
	id
  , tipo
FROM
	tipos_produtos;

SELECT
	tipo
  , id
FROM
	tipos_produtos;

SELECT
	id
  , tipo
FROM
	tipos_produtos
ORDER BY
	tipo DESC;

# Tabela Fabricantes
SELECT
	*
FROM
	fabricantes;

# Tabela Médicos
SELECT
	*
FROM
	medicos;

# Tabela Clientes
SELECT
	*
FROM
	clientes;

# Tabela Compras
SELECT
	*
FROM
	compras;

# Tabela Produtos Compras
SELECT
	*
FROM
	produto_compra;

SELECT
	*
FROM
	produto_compra
WHERE
	quantidade > 2;

# Tabela Receitas Médicas
SELECT
	*
FROM
	receitas_medicas;