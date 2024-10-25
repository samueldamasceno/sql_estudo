-- aula 6 - consultas complexas

-- SUBCONSULTAS: consultas dentro de outras consultas
-- exemplo: selecionar produtos com preço abaixo da média
SELECT nome FROM produtos WHERE preco < (SELECT AVG(preco) FROM produtos);
-- estamos selecionando a coluna nome da tabela produtos onde eles correspondam a outro select

-- UNION e UNION ALL: combinam resultados de várias consultas
-- UNION remove duplicatas; UNION ALL mantém duplicatas
SELECT nome FROM produtos WHERE ativo = TRUE
UNION 
SELECT nome FROM produtos WHERE preco < 50.00;
-- retorna produtos ativos e produtos com preço abaixo de 50

-- CTE (common table expressions): para estruturar consultas de forma mais legível usando WITH
WITH produtos_ativos AS (
    SELECT * 
    FROM produtos 
    WHERE ativo = TRUE
)
SELECT AVG(preco) FROM produtos_ativos;
-- aqui, criamos a variavel 'produtos_ativos', que é uma CTE e o resultado de uma subconsulta
-- depois, usamos uma função em cima da variavel


-- RANK OVER: classifica os resultados de uma consulta
SELECT nome, preco, RANK() OVER (ORDER BY preco DESC) AS ranking FROM produtos;
-- criamos a variavel 'ranking' e usamos a função RANK()
-- classifica os produtos por preço, atribuindo um ranking