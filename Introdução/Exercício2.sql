CREATE DATABASE db_e_commerce;
USE db_e_commerce;

CREATE TABLE tb_produtos(
codigo bigint auto_increment,
nome varchar(50),
marca varchar(30),
quantidade int(5),
pais_fabricacao varchar(20),
valor decimal(10,2),

PRIMARY KEY (codigo)
);

INSERT INTO tb_produtos(nome, marca, quantidade, pais_fabricacao, valor)
VALUES("Notbook Gamer", "DELL", 30, "Brasil", 2500.00 );

INSERT INTO tb_produtos(nome, marca, quantidade, pais_fabricacao, valor)
VALUES("Iphone", "Apple", 20, "Estados Unidos", 400.00 );

INSERT INTO tb_produtos(nome, marca, quantidade, pais_fabricacao, valor)
VALUES("Xbox", "Xbox", 40, "China", 300.00 );

INSERT INTO tb_produtos(nome, marca, quantidade, pais_fabricacao, valor)
VALUES("TV Smart", "Samsung", 60, "Argentina", 3500.00 );

INSERT INTO tb_produtos(nome, marca, quantidade, pais_fabricacao, valor)
VALUES("Tenis", "Adidas", 30, "Japão", 100.00 );

INSERT INTO tb_produtos(nome, marca, quantidade, pais_fabricacao, valor)
VALUES("Geladeira", "Electrolux", 10, "Chile", 2000.00 );

INSERT INTO tb_produtos(nome, marca, quantidade, pais_fabricacao, valor)
VALUES("Fogão", "Consul", 70, "Italy", 5000.00 );

INSERT INTO tb_produtos(nome, marca, quantidade, pais_fabricacao, valor)
VALUES("Microondas", "Brastemp", 30, "Portugal", 200.00 );

SELECT * FROM tb_produtos WHERE valor > 500.00;
SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET valor = 1000.00 WHERE codigo = 6;