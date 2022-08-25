-- Criando um Usuário
CREATE USER
    estagiario
WITH PASSWORD
    '123456';

-- Criando um Banco de Dados
CREATE DATABASE
    secao_04;

-- Criando Tabela Empresas
CREATE TABLE empresas
(
    id SERIAL PRIMARY KEY
  , nome VARCHAR(50) NOT NULL
  , funcionarios INT NOT NULL
  , cidade VARCHAR(50) NOT NULL
);

-- Conceder Privilégios para o Usuário Estagiário
GRANT ALL ON
    empresas
TO
    estagiario;

GRANT USAGE, SELECT ON SEQUENCE
    empresas_id_seq
TO
    estagiario;

-- Inserindo Dados na Tabela Empresas
INSERT INTO empresas
(
    nome
  , funcionarios
  , cidade
) VALUES (
    'Apple'
   , 4500
   , 'Cupertino'
);

INSERT INTO empresas
(
    nome
  , funcionarios
  , cidade
) VALUES (
    'Microsoft'
   , 23500
   , 'Palo Alto'
);

INSERT INTO empresas
(
    nome
  , funcionarios
  , cidade
) VALUES (
    'Amazon'
   , 900
   , 'Santos'  
);

-- Selecionando Dados Inseridos na Tabela Empresas
SELECT
    *
FROM
    empresas;

-- Atualizando Dados na Tabela Empresas
UPDATE
    empresas
SET
    funcionarios = 1500
WHERE
    id = 3;

-- Apagando Dados da Tabela Empresas
DELETE FROM
    empresas
WHERE
    id = 2;

-- Removendo as Permissões do Usuário Estagiário
REVOKE ALL ON
    empresas
FROM
    estagiario;

-- Concedendo Somente Acesso de Leitura
GRANT SELECT ON
    empresas
TO
    estagiario;

-- Removendo Usuário Estagiário
DROP USER
    estagiario;