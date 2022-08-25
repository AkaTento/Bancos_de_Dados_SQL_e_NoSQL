/*

ATENÇÃO: Sempre que fazer acesso ao MongoDB selecione o banco de dados para trabalho
pois caso não seja feita a seleção você estará trabalhando em um banco de dados
chamado 'test'.

a) Acessando o Shell do MongoDB, abra o terminal e digite o comando:

mongo

b) Selecione o banco de dados

use meubanco

OBS: Troque o 'meubanco' acima pelo nome do banco de dados que você quer trabalhar.

*/

// Inserindo documento na collection inscricoes
db.inscricoes.insert(
	{
		"aluno": "Guilherme Dantas",
		"data": new Date(),
		"curso": {
			"nome": "Programação para internet"
		},
		"notas": [7, 8.5, 10]
	}
)

// Inserindo documento na collection inscricoes
db.inscricoes.insert(
	{
		"aluno": "Angelna Souza",
		"data": new Date(),
		"curso": {
			"nome": "Programação para internet"
		},
		"notas": [7.4, 9.5, 9.4]
	}
)

// Inserindo documento na collection inscricoes
db.inscricoes.insert(
	{
		"aluno": "William Douglas",
		"data": new Date(),
		"curso": {
			"nome": "Programação para internet"
		},
		"notas": [6.4, 3.5, 6.4]
	}
)

// Selecionando coleções
db.inscricoes.find(
	{
		"curso.nome": "Programação para Internet"
	}
)

/*
	O comando 'update' recebe dois parâmetros:
	- O primeiro funciona como o 'WHERE' no SQL e serve para filtrarmos o/os documento/s no qual queremos atualizar.
	- O segundo é como o documento deve ficar após atualizado.

	OBS:
		- O comando 'update', por padrão, irá atualizar somente o primeiro documento que encontrar.
		- O comando 'update' irá substituir o documento original pelo nome especificado no segundo parâmetro.
*/

// Atualizando a coleção inscrições
db.inscricoes.update(
	{"curso.nome": "Programação para internet"},
	{"nome": "Programação para Internet"}
)

/*
O comando de remoção é simples. Apenas usamos o método remove() passando o filtro.
*/

// Removendo um documento da coleção inscrições
db.inscricoes.remove(
	{
		"_id" : ObjectId("5d07a561d4975e81d79dee14")
	}
)

// Atualizando a coleção inscrições
db.inscricoes.update(
	{"curso.nome": "Programação para internet"},
	{
		$set: {
			"curso.nome": "Programação para Internet"
		}
	}
)

/*
 Utilizando o comando 'update' para atualizar múltiplos documentos
*/

// Atualizando a coleção inscrições
db.inscricoes.update(
	{"curso.nome": "Programação para internet"},
	{
		$set: {
			"curso.nome": "Programação para Internet"
		}
	},
	{
		multi: true
	}
)

/*
	O operador $push só adiciona um elemento no array
*/

// Atualizando a coleção inscrições
db.inscricoes.update(
	{"_id" : ObjectId("5d07ad35d4975e81d79dee18")},
	{
		$push: {
			notas: 6.7
		}
	}
)

/*
 Caso precisemos adicionar mais de um valor em um array, usamos o operador $each em conjunto
 com o operador $push.
*/

// Atualizando a coleção inscrições
db.inscricoes.update(
	{"_id" : ObjectId("5d07a8d2d4975e81d79dee16")},
	{
		$push: {
			notas: {
				$each: [9.2, 5]
			}
		}
	}
)