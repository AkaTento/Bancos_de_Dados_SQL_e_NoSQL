//* Criando um banco de dados meubanco
USE
    meubanco;

// Criando uma coleção e inserindo dados
db.pessoas.insert
(
{
    "nome": "Felicity Jones"
  , "email" : "felicity@gmail.com"
}
)

// Criando uma coleção e inserindo dados
db.pessoas.insert
(
{
   "nome": "Angelina Jolie"
 , "email": "angelina@gmail.com"
}
)

// Encontrando dados no banco de dados
db.pessoas.find()

// Mostrar as coleções
show collections