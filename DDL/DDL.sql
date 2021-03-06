
--CRIAANDO TABELA CLINICA
CREATE TABLE clinica(
IdClinica INT IDENTITY PRIMARY KEY NOT NULL,
nome VARCHAR(100),
endereco VARCHAR(70)
);

--CRIANDO TABELA VETERINARIO
CREATE TABLE veterinarios(
IdVeterinario INT IDENTITY PRIMARY KEY NOT NULL,
IdClinica INT FOREIGN KEY REFERENCES clinica (IdClinica),
CRMV VARCHAR(100),
nome VARCHAR(70)
);

--CRIANDO TABELA ATENDIMENTOS
CREATE TABLE atendimentos(
IdAtendimento INT IDENTITY PRIMARY KEY NOT NULL,
IdVeterinario INT FOREIGN KEY REFERENCES veterinarios (IdVeterinario),
IdPet INT FOREIGN KEY REFERENCES pet (IdPet),
descricao VARCHAR(400),
dataatendimento DATETIME
);

--CRIANDO TABELA PET
CREATE TABLE pet(
IdPet INT IDENTITY PRIMARY KEY NOT NULL,
nome VARCHAR(50),
datadenascimento VARCHAR(50)
);
--ADICIONANDO DADOS ESQUECIDOS
ALTER TABLE pet ADD IdDono INT FOREIGN KEY REFERENCES dono (IdDono);
ALTER TABLE pet ADD IdRaca INT FOREIGN KEY REFERENCES racas (IdRaca);

--CRIANDO TABELA DONO
CREATE TABLE dono(
IdDono INT IDENTITY PRIMARY KEY NOT NULL,
nome VARCHAR(70)
);

--CRIANDO TABELA RACAS
CREATE TABLE racas(
IdRaca INT IDENTITY PRIMARY KEY NOT NULL,
IdTipopet INT FOREIGN KEY REFERENCES tipopet (IdTipopet),
descricao VARCHAR(300)
);

--CRIANDO TABELA TIPO PET
CREATE TABLE tipopet(
IdTipopet INT IDENTITY PRIMARY KEY NOT NULL,
descricao VARCHAR(300),
);

