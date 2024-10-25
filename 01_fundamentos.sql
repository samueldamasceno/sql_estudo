-- aula 1

-- create database
-- create table
-- insert into
-- select
-- update
-- delete
-- drop table
-- drop database

-- CREATE DATABASE: cria um novo banco de dados
-- USE: seleciona o banco de dados para as operações seguintes
CREATE DATABASE loja_virtual;
USE loja_virtual;

-- CREATE TABLE: cria uma nova tabela no banco de dados
-- temos que definir o nome e as colunas da tabela, além dos tipos de dados
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    data_cadastro DATE
);

-- INSERT INTO: insere dados em uma tabela
-- temos que informar o nome da tabela e os valores a serem inseridos
INSERT INTO produtos (nome, descricao, preco) VALUES 
    ('Notebook', 'Notebook com 16GB de RAM e 512GB SSD', 4500.00),
    ('Mouse Gamer', 'Mouse com 8 botões e iluminação RGB', 150.00),
    ('Teclado Mecânico', 'Teclado mecânico com switches blue', 350.00);

-- obs: em alguns bancos temos que inserir os valores um por vez

-- SELECT: consultar os dados de uma tabela
-- usamos asterisco para selecionar todos os campos
SELECT * FROM produtos;

-- ou podemos selecionar apenas alguns campos
SELECT nome, preco FROM produtos;

-- UPDATE: altera os dados de registros existentes em uma tabela
-- para isso, usamos SET para informar os novos valores e WHERE para filtrar os registros
-- atualizando o preço do produto com id 2:
UPDATE produtos SET preco = 200.00 WHERE id = 2;

-- DELETE: remove um registro de uma tabela
DELETE FROM produtos WHERE id = 3;

-- podemos usar operadores numéricos em consultas
SELECT * FROM produtos WHERE preco > 100;
SELECT * FROM produtos WHERE preco >= 100;
SELECT * FROM produtos WHERE preco < 100;
SELECT * FROM produtos WHERE preco <= 100;

-- tambem podemos usar operadores logicos em consultas
SELECT * FROM produtos WHERE preco >= 100 AND nome = 'Notebook';
SELECT * FROM produtos WHERE preco >= 100 OR nome = 'Notebook';

-- ORDER BY: permite ordenar os resultados de uma consulta
SELECT * FROM produtos 
ORDER BY nome ASC;

-- ASC: ordena em ordem crescente
-- DESC: ordena em ordem decrescente

-- DROP TABLE: remove uma tabela do banco de dados
DROP TABLE produtos;

-- DROP DATABASE: remove um banco de dados
DROP DATABASE loja_virtual;
