-- aula 2 - tipos de dados


-- tipos de dados de números:
-- int, smallint, mediumint, bigint, float, double, decimal

-- INT: números inteiros (32 bits). ex: 1, 100, -50
-- escolha padrão para IDs e contadores

-- SMALLINT, MEDIUMINT, BIGINT: números inteiros
-- cada um deles ocupa um tamanho diferente (16, 24 ou 32 bits)
-- ou seja, smallint armazena números menores, enquanto bigint armazena números enormes

-- FLOAT, DOUBLE, DECIMAL: valores decimais.
-- um é mais preciso que o outro, sendo float o menos preciso e decimal o mais preciso
-- especificamos o total de dígitos e as casas decimais, por exemplo:
-- FLOAT(10, 2) significa 10 dígitos inteiros e 2 casas decimais.

-- quando usar cada tipo de número:
-- INT: contadores, ids, qualquer valor que não seja quebrado
-- SMALLINT, MEDIUMINT, BIGINT: conforme o tamanho esperado dos números, para otimizar a memória
-- FLOAT, DOUBLE: cálculos científicos ou medições, onde a precisão pode ser aproximada
-- DECIMAL: números exatos que precisam ser precisos



-- tipos de dados de texto:
-- char, varchar, text

-- CHAR: armazena textos de tamanho fixo (até 255 caracteres)
-- ex: bom pra armazenar códigos ou identificadores de tamanho fixo, como 'ABC123'

-- VARCHAR: tamanho variável (até 255 caracteres)
-- ocupa menos espaço quando o texto é menor que o limite definido
-- ex: nomes, descrições curtas

-- TEXT: tamanho variável (até 65535 caracteres)
-- utilizado para grandes blocos de texto
-- ex: descrições longas, comentários

-- quando usar cada um:
-- CHAR: quando o tamanho dos textos é sempre o mesmo
-- VARCHAR: textos curtos que variam de tamanho
-- TEXT: textos longos, como campos de comentários ou descrições completas



-- tipos de dados de data e hora:
-- date, time, datetime, timestamp

-- DATE: armazena uma data no formato 'AAAA-MM-DD' (ano, mês, dia)
-- TIME: armazena um horário no formato 'HH:MM'
-- DATETIME: armazena data e hora juntos no formato 'AAAA-MM-DD HH:MM'

-- TIMESTAMP: armazena data e hora com o fuso horário do servidor
-- geralmente usado para logs e marcações automáticas de tempo

-- obs:
-- DATETIME: quando você precisa saber a data e hora de um evento
-- DATE ou TIME: quando você precisa apenas da data ou hora
-- cada banco de dados tem funções próprias para converter e manipular datas


-- tipos de dados booleanos:

-- BOOLEAN: armazena valores lógicos, verdadeiro ou falso (true/false)


-- exemplo:

CREATE TABLE alunos (
    id INT,
    nome VARCHAR(100),
    email VARCHAR(100),
    ativo BOOLEAN,
    data_nascimento DATE,
    idade SMALLINT,
    altura DECIMAL(10, 2),
    cadastro DATETIME,
    biografia TEXT,
)