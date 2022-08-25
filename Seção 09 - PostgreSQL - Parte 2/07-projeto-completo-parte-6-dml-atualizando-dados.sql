-- Selecionando dados da tabela atores
SELECT
    id
  , nome
FROM
    atores
ORDER BY
    id ASC;

-- Atualizando dados da tabela atores
UPDATE
    atores
SET
    nome = 'Bread Pitt Silva'
WHERE
    id = 1;

-- Selecionando dados da tabela emprestimos
SELECT
    *
FROM
    emprestimos;

-- Atualizando dados da tabela emprestimos
UPDATE
    emprestimos
SET
    data = '2019-06-03'
WHERE
    id = 3;

