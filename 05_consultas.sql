-- aula 5

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    data_cadastro DATE,
    ativo BOOLEAN DEFAULT TRUE,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
)

-- revisao: consultas basicas
SELECT * FROM produtos;  -- seleciona todos os campos de todos os produtos
SELECT nome, preco FROM produtos;  -- seleciona apenas os campos 'nome' e 'preco' de todos os produtos
SELECT * FROM produtos WHERE ativo = TRUE;  -- seleciona produtos ativos
SELECT * FROM produtos WHERE preco < 50.00;  -- seleciona produtos com preço abaixo de 50
SELECT * FROM produtos ORDER BY preco DESC;  -- seleciona produtos ordenados pelo preço em ordem decrescente
SELECT * FROM produtos LIMIT 50;  -- seleciona apenas os 50 primeiros produtos

-- consultas com JOIN
-- JOIN: permite combinar tabelas relacionadas em consultas
-- AS: permite renomear as colunas de uma tabela, pra evitar conflitos entre nomes de colunas

SELECT * FROM produtos JOIN categoria ON produtos.categoria_id = categoria.id;
-- seleciona todos os produtos e suas categorias

-- exemplo com AS pra renomear tabela
SELECT p.*, c.* FROM produtos AS p JOIN categoria AS c ON p.categoria_id = c.id;
-- renomeamos a tabela produtos pra p e categoria pra c

-- GROUP BY: permite agrupar os resultados de uma consulta
SELECT categoria_id FROM produtos GROUP BY categoria_id;
-- isso permite agrupar os produtos em cada categoria

-- funções matemáticas no sql
SELECT AVG(preco) AS preco_medio FROM produtos;  -- calcula o preço médio dos produtos
SELECT MIN(preco) AS preco_minimo FROM produtos;  -- encontra o preço mínimo
SELECT MAX(preco) AS preco_maximo FROM produtos;  -- encontra o preço máximo
SELECT SUM(preco) AS preco_total FROM produtos;  -- encontra o preco total dos produtos
SELECT COUNT(*) AS total_produtos FROM produtos;  -- conta o número de produtos

-- GROUP BY + COUNT: permite agrupar os resultados de uma consulta
SELECT categoria_id, COUNT(*) AS total_produtos FROM produtos GROUP BY categoria_id;
-- conta o número de produtos em cada categoria
-- usamos a função COUNT() para contar o número de produtos que pertencem a cada categoria

