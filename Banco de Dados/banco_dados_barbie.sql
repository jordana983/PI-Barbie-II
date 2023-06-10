CREATE DATABASE Barbie;

USE Barbie;

CREATE TABLE filme (
idFilme INT PRIMARY KEY auto_increment,
nome Varchar (45)
);

CREATE TABLE personagem (
idPersonagem INT PRIMARY KEY auto_increment,
nome Varchar (45)
);

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY auto_increment,
nome VARCHAR (50) NOT NULL,
sobrenome VARCHAR (50),
email varchar (45) NOT NULL,
senha VARCHAR(16) NOT NULL,
fkFilme INT,
fkPersonagem INT,
constraint fkFilme foreign key (fkFilme) references filme (idFilme),
constraint fkPersonagem foreign key (fkPersonagem) references personagem (idPersonagem)
);

INSERT INTO filme VALUES 
(null, 'Barbie Escola de Princesas'),
(null, 'Barbie e o Castelo de Diamantes'),
(null, 'Barbie em Vida de Sereia'),
(null, 'Barbie em a Princesa e a Plebéia'),
(null, 'Barbie e as Doze Princesas Bailarinas');

INSERT INTO personagem VALUES 
(null, 'Barbie'),
(null, 'Ken'),
(null, 'Raquelle'),
(null, 'Nikki'),
(null, 'Teresa'),
(null, 'Ryan');


SELECT COUNT(nome) as qtdPersonagens FROM personagem WHERE nome = 'Barbie' GROUP BY nome
        UNION ALL
        SELECT COUNT(nome) FROM personagem WHERE nome = 'Ken' GROUP BY nome
        UNION ALL
        SELECT COUNT(nome) FROM personagem WHERE nome = 'Raquelle' GROUP BY nome
        UNION ALL
        SELECT COUNT(nome) FROM personagem WHERE nome = 'Nikki' GROUP BY nome
        UNION ALL
        SELECT COUNT(nome) FROM personagem WHERE nome = 'Teresa' GROUP BY nome
        UNION ALL
        SELECT COUNT(nome) FROM personagem WHERE nome = 'Ryan' GROUP BY nome;
        
        SELECT COUNT(fkPersonagem) AS qtdEscolhido, personagem.Nome AS NomePersonagem FROM usuario JOIN 
        personagem ON fkPersonagem = idPersonagem GROUP BY fkPersonagem;
        
                SELECT COUNT(fkFilme) AS qtdEscolhido, filme.Nome AS NomeFilme FROM usuario JOIN 
        filme ON fkFilme = idFilme GROUP BY fkFilme;
        
        SELECT * FROM usuario;