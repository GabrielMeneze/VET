--DQL

--Selecionar todos dados da tabela
SELECT * FROM pet;

--Selecionar um dado especifico
SELECT * FROM dono WHERE IdDono = 1;

--Selecionar uma busca especifica
SELECT * FROM dono WHERE nome LIKE'Jorge';

-- Ordenar por forma crescente padrão
SELECT * FROM pet ORDER BY nome;

-- Ordenar por forma crescente
SELECT * FROM pet ORDER BY nome ASC;

-- Ordenar por forma DEcrescente
SELECT * FROM pet ORDER BY nome DESC;

-- Selecionar dados com condição especial
SELECT * FROM pet WHERE IdPet < 5 AND idPet > 2;

-- Selecionar dados entre dados especificos
SELECT * FROM pet WHERE IdPet BETWEEN '1' AND '3';

/* Join */
/* Join */
SELECT
racas.descricao,
racas.IdRaca
FROM racas
INNER JOIN tipopet ON racas.descricao = racas.descricao
INNER JOIN pet ON tipopet.descricao = tipopet.descricao
;