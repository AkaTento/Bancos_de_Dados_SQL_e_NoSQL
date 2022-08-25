-- Criando tabela generos
CREATE TABLE `generos`
(
  `id` int PRIMARY KEY,
  `genero` varchar(255) NOT NULL
);

-- Criando tabela filmes
CREATE TABLE `filmes`
(
  `id` int PRIMARY KEY,
  `titulo` varchar(255) NOT NULL,
  `id_genero` int NOT NULL,
  `valor` decimal(8,2) NOT NULL
);

-- Criando tabela dvds
CREATE TABLE `dvds`
(
  `id` int PRIMARY KEY,
  `id_filme` int NOT NULL,
  `quantidade` int NOT NULL
);

-- Criando tabela atores
CREATE TABLE `atores`
(
  `id` int PRIMARY KEY,
  `nome` varchar(255) NOT NULL
);

-- Criando tabela atores filmes
CREATE TABLE `atores_filme`
(
  `id` int PRIMARY KEY,
  `id_filme` int NOT NULL,
  `id_ator` int NOT NULL,
  `personagem` varchar(255) NOT NULL
);

-- Criando tabela clientes
CREATE TABLE `clientes`
(
  `id` int PRIMARY KEY,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL
);

-- Criando tabela emprestimos
CREATE TABLE `emprestimos`
(
  `id` int PRIMARY KEY,
  `data` datetime NOT NULL,
  `id_cliente` int NOT NULL
);

-- Criando tabela filmes emprestimo
CREATE TABLE `filmes_emprestimo`
(
  `id` int PRIMARY KEY,
  `id_emprestimo` int NOT NULL,
  `id_filme` int NOT NULL
);

-- Criando tabela devolucao
CREATE TABLE `devolucoes`
(
  `id` int PRIMARY KEY,
  `id_emprestimo` int NOT NULL,
  `data` datetime NOT NULL
);

-- Criando tabela filmes devolucao
CREATE TABLE `filmes_devolucao`
(
  `id` int PRIMARY KEY,
  `id_devolucao` int NOT NULL,
  `id_filme_imprestimo` int NOT NULL
);

-- Adicionado chave estrangeira nas tabelas
ALTER TABLE 
  `filmes`
ADD FOREIGN KEY
(
  `id_genero`
) REFERENCES 
  `generos` (`id`);

ALTER TABLE 
  `dvds`
ADD FOREIGN KEY
(
  `id_filme`
) REFERENCES
  `filmes` (`id`);

ALTER TABLE
  `atores_filme`
ADD FOREIGN KEY
(
  `id_filme`
) REFERENCES 
  `filmes` (`id`);

ALTER TABLE
  `atores_filme`
ADD FOREIGN KEY
(
  `id_ator`
) REFERENCES
  `atores` (`id`);

ALTER TABLE
  `emprestimos` 
ADD FOREIGN KEY
(
  `id_cliente`
) REFERENCES 
  `clientes` (`id`);

ALTER TABLE
  `filmes_emprestimo`
ADD FOREIGN KEY
(
  `id_emprestimo`
) REFERENCES
  `emprestimos` (`id`);

ALTER TABLE
  `filmes_emprestimo`
ADD FOREIGN KEY
(`
  id_filme`
) REFERENCES 
  `filmes` (`id`);

ALTER TABLE
  `devolucoes`
ADD FOREIGN KEY
(
  `id_emprestimo`
) REFERENCES
  `emprestimos` (`id`);

ALTER TABLE
  `filmes_devolucao`
ADD FOREIGN KEY
(
  `id_devolucao`
) REFERENCES 
  `devolucoes` (`id`);

ALTER TABLE
  `filmes_devolucao` 
ADD FOREIGN KEY
(
    `id_filme_imprestimo`
) REFERENCES
    `filmes_emprestimo` (`id`);
