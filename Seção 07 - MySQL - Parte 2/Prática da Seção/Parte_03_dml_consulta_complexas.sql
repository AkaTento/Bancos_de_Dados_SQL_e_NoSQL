# Consulta Complexa

# Tabela Compras
# Passo 1 - Trazer as Compras
SELECT
	*
FROM
	compras;

# Passo 2 - Colocar o nome dos clientes nas compras
SELECT
	com.id 		AS 'ID Compra'
  , cli.nome 	AS 'Cliente'
  , com.data 	AS 'Data Compra'
FROM
	compras 	AS com
  , clientes 	AS cli
WHERE
	com.id_cliente = cli.idclientes;

# Passo 3 - Produtos Compra
SELECT
	*
FROM
	produto_compra;

# Passo 4 - 
SELECT
	cli.nome 									AS 'Clientes'
  , SUM(prod.preco_venda * proc.quantidade) 	AS 'Total'
  , com.data 									AS 'Data da Compra'
FROM
	produto_compra 								AS proc
  , produtos 									AS prod
  , compras 									AS com
  , clientes 									AS cli
WHERE
	com.id = proc.id_compra
AND
	prod.id = proc.id_produto
AND
	cli.idclientes = com.id_cliente
GROUP BY
	com.id;