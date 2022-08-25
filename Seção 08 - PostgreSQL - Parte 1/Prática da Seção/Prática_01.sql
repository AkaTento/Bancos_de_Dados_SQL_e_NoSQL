-- Criando um Banco de Dados
CREATE DATABASE IF NOT EXISTS
    secao_03;

-- Criando Tabelas
CREATE TABLE IF NOT EXISTS tipos_produto
(
    id SERIAL PRIMARY KEY
  , descricao CHARACTER VARYING(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS produto
(
    id SERIAL PRIMARY KEY
  , descricao CHARACTER VARYING(50) NOT NULL
  , preco MONEY NOT NULL
  , id_tipo_produto INT REFERENCES tipos_produto(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS pacienteS
(
    id SERIAL PRIMARY KEY
  , nome CHARACTER VARYING(50) NOT NULL
  , endereco CHARACTER VARYING(50) NOT NULL
  , bairro CHARACTER VARYING(50) NOT NULL
  , cidade CHARACTER VARYING(40) NOT NULL
  , estado CHAR(2) NOT NULL
  , cep VARCHAR(9) NOT NULL
  , data_nascimento DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS professor
(
    id SERIAL PRIMARY KEY
  , telefone INT NOT NULL
  , nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS turma
(
    id SERIAL PRIMARY KEY
  , capacidade INT NOT NULL
  , id_professor INT REFERENCES professores(id) NOT NULL
);