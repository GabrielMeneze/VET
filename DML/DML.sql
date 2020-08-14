--DML
INSERT INTO dono (nome) VALUES ('Leticia');
INSERT INTO clinica (nome, endereco) VALUES ('Lar dos pets', 'Rua do MarmoreNº78');
INSERT INTO racas (descricao) VALUES ('Pastor alemão');
INSERT INTO pet (nome, datadenascimento) VALUES ('theus','23-07-2002');

-- UPDATE - Alterar dados
UPDATE tipopet SET
	descricao = ('Cachorro')
WHERE IdTipopet = 1;

-- DELETE - Deletar dados
DELETE FROM pet
WHERE IdPet = 1;

--CONSULTA DQL
SELECT * FROM clinica;
SELECT * FROM dono;
SELECT * FROM pet;
SELECT * FROM racas;