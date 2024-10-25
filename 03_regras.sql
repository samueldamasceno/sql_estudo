-- aula 3 - regras

-- default, not null, primary key, foreign key, auto increment, unique, check
-- constraints e index

-- CREATE TABLE produtos (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     nome VARCHAR(100) NOT NULL UNIQUE CONSTRAINT nome_unico,
--     descricao TEXT,
--     preco DECIMAL(10, 2) NOT NULL CHECK (preco > 0),
--     data_cadastro DATE DEFAULT CURRENT_DATE,
--     ativo BOOLEAN DEFAULT TRUE
-- );

-- constraints é como chamamos as regras de negócio, pra manter a integridade dos dados
-- as constraints principais são PRIMARY KEY, UNIQUE, NOT NULL, CHECK e DEFAULT
-- podemos definir nomes para as constraints para melhorar a legibilidade

-- PRIMARY KEY: identifica de forma única cada registro na tabela
-- ex: 'id' é a chave primária da tabela 'produtos'

-- UNIQUE: campo não pode ser repetido, dois valores iguais são inválidos

-- NOT NULL: campo não pode ser nulo (vazio)

-- CHECK: define uma condicional para o campo
-- ex: se o campo 'preco' for menor que zero, ele não pode ser cadastrado

-- DEFAULT: define um valor padrão para a coluna se nenhum valor for informado
-- ex: se o produto não tiver o campo 'ativo' preenchido, ele será 'true',
-- e se a data de cadastro não tiver sido informada, ela será a data atual

-- AUTO_INCREMENT: faz com que o valor da coluna seja incrementado automaticamente
-- geralmente usado para o campo de chave primária, como o id

-- FOREIGN KEY: cria um relacionamento entre duas tabelas
-- precisamos usar 'references' para indicar qual tabela e coluna estamos relacionando
-- a tabela 'produtos' terá uma coluna 'categoria_id' que se relaciona com 'id' da tabela 'categorias'

CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    data_cadastro DATE DEFAULT CURRENT_DATE,
    ativo BOOLEAN DEFAULT TRUE,
    categoria_id INT CONSTRAINT fk_categorias_produtos,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);
-- depois de declarar a coluna categoria_id, definimos que ela é uma chave estrangeira
-- que referencia a tabela categoria pela coluna 'id'

-- INDEX: permite que os dados de uma tabela sejam pesquisados mais rapidamente
-- geralmente usado para pesquisas de valores unicos

CREATE INDEX idx_nome ON produtos (nome);
-- isso permite que os dados da coluna 'nome' sejam pesquisados mais rapidamente
