// Criando uma coleção
db.createCollection
(
	"acessos"
)

// Inserindo documentos na collection acessos
db.acessos.insert
({
	"usuario": "Angelina"
  , "senha": "123456"	
})

// Inserindo documento na collection inscricoes
db.inscricoes.insert(
	{
		"aluno": "Paula Fernandes",
		"data": new Date(),
		"curso": {
			"nome": "Programação para Internet"
		}
	}
)

// Inserindo documento na collection inscricoes
db.inscricoes.insert(
	{
		"aluno": "Fernanda da Silva",
		"data": new Date(),
		"curso": {
			"nome": "Ciência da Computação"
		},
		"notas": [9.0, 7.0, 8],
		"skills": [
			{
				"nome": "Python",
				"nivel": "avançado"
			},
			{
				"nome": "Banco de Dados",
				"nivel": "avançado"
			}
		]
	}
)

// Inserindo documento na collection inscricoes
db.inscricoes.insert(
	{
		"aluno": "Fabiano Perez",
		"data": new Date(),
		"curso": {
			"nome": "Programação para Internet"
		},
		"skills": [
			{
				"nome": "Python",
				"nivel": "básico"
			}
		]
	}
)

// Selecionando coleções
db.inscricoes.find(
	{
		"skills.nome": "Python"
	}
)

// Selecionando coleções
db.inscricoes.find(
	{
		"skills.nome": "Python",
		"skills.nivel": "avançado"
	}
)


// Selecionando coleções
db.inscricoes.find(
	{
		"curso.nome": "Programação para Internet"
	}
)

// Selecionando coleções
db.inscricoes.find(
	{
		$or: [
			{"curso.nome": "Ciência da Computação"},
			{"curso.nome": "Programação para Internet"}
		]
	}
)

// Selecionando coleções
db.inscricoes.find(
	{
		$or: [
			{"curso.nome": "Ciência da Computação"},
			{"curso.nome": "Programação para Internet"}
		],
		"aluno": "Fabiano Perez"
	}
)

// Selecionando coleções
db.inscricoes.find(
	{
		"aluno": "Fabiano Perez"
	}
)

// Selecionando coleções
db.inscricoes.find(
	{
		"skills.nome": "Python",
		"skills.nivel": {
			$in: ["avançado", "intermediário"]
		}
	}
)