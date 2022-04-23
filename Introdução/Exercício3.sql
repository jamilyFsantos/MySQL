CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE estudantes(
ra bigint auto_increment,
nome varchar(50),
serie varchar(12),
nm_sala varchar(10),
periodo varchar(10),
nota decimal(2,2),

PRIMARY KEY (ra)
);

ALTER TABLE estudantes MODIFY nota decimal(2,1);
ALTER TABLE estudantes MODIFY nota decimal(10,1);

INSERT INTO estudantes(nome, serie, nm_sala, periodo, nota)
VALUES("maria Silva", "2° Ano - EM", "13", "Noturno", 7.5 ),
	  ("Mateus Gomes", "3° Ano - EM", "5", "Noturno", 10.0),
      ("Eduarda Pereira", "8° Ano - EF", "1", "Matutino", 5.5),
      ("Lucas Marinho", "7° Ano - EF", "10", "Matutino", 6.5),
      ("Larissa Santos", "5° Ano - EF", "3", "Vespertino", 9.7),
      ("Tadeu da Silva Santos", "1° Ano - EM", "4", "Noturno", 2.0),
      ("Julia Paz", "6° Ano - EF", "7", "Vespertino", 10.0),
      ("Marcos Fernandes", "2° Ano - EM", "11", "Noturno", 8.0);
      
SELECT * FROM estudantes WHERE nota > 7.0;
SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 7.0 WHERE ra = 6; 