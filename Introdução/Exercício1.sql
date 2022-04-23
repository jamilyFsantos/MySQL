CREATE DATABASE db_rh_servicos;
USE db_rh_servicos;

CREATE TABLE colaboradores(
  id bigint auto_increment,
  nome varchar(50),
  cpf varchar(12),
  cargo varchar(40),
  telefone varchar(14),
  salario decimal(10,2),
  
  PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome, cpf, cargo, telefone, salario)
VALUES("Harry Potter", "457764095-56", "Desenvolvedor Front-End", "(11)96234758", 1500.00);

INSERT INTO colaboradores(nome, cpf, cargo, telefone, salario)
VALUES("Hermione Granger", "486362003-86", "Desenvolvedor Back-End", "(11)96336748", 5000.00);

INSERT INTO colaboradores(nome, cpf, cargo, telefone, salario)
VALUES("Draco Malfoy", "855763245-59", "Desenvolvedor Full-Stack", "(11)97253754", 2500.00);

INSERT INTO colaboradores(nome, cpf, cargo, telefone, salario)
VALUES("Luna Lovegood", "365768035-43", "DevOps", "(11)95334853", 1300.00);

INSERT INTO colaboradores(nome, cpf, cargo, telefone, salario)
VALUES("Jorge Weasley", "487054295-76", "Product Owner", "(11)56634798", 4500.00);

SELECT * FROM colaboradores WHERE salario > 2000.00;
SELECT * FROM colaboradores WHERE salario < 2000.00;

UPDATE colaboradores SET telefone = "(11)40028922" WHERE id = 4;