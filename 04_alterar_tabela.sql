-- aula 4

-- ALTER TABLE: permite alterar as propriedades de uma tabela
-- temos que informar o nome da tabela e as alterações a serem feitas

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL CHECK (preco > 0),
    quantidade INT CHECK (quantidade > 0),
    data_cadastro DATE
);


-- possíveis alterações:

-- ADD: adiciona uma coluna
ALTER TABLE produtos ADD COLUMN categoria_id INT;

-- DROP: remove uma coluna
ALTER TABLE produtos DROP COLUMN quantidade;

-- MODIFY: modifica o tipo de dado de uma coluna, ou altera as regras de validação
ALTER TABLE produtos MODIFY COLUMN preco DECIMAL(10, 2) NOT NULL CHECK (preco > 0);
ALTER TABLE produtos MODIFY COLUMN categoria_id INT NOT NULL;

-- RENAME TO: renomeia uma coluna
ALTER TABLE produtos RENAME COLUMN categoria_id TO categoria

-- alterar chave primária:
ALTER TABLE produtos DROP PRIMARY KEY
ALTER TABLE produtos ADD PRIMARY KEY (id)

-- adicionar chave estrangeira:
ALTER TABLE produtos ADD FOREIGN KEY (categoria_id) REFERENCES categoria(id)

-- remover chave estrangeira:
ALTER TABLE produtos DROP FOREIGN KEY produtos

-- renomear tabela:
RENAME TABLE categoria TO categorias

-- adicionar e remover index
ALTER TABLE categorias ADD INDEX (nome)
ALTER TABLE categorias DROP INDEX (nome)

-- adicionar e remover constraint
ALTER TABLE categorias ADD CONSTRAINT nome_unico UNIQUE (nome)
ALTER TABLE categorias DROP CONSTRAINT nome_unico