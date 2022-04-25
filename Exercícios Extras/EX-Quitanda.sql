CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_categoria(
id bigint auto_increment,
nome varchar(40),
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
cod bigint auto_increment,
categoria_id bigint,
nome varchar(50),
marca varchar(50),
validade date,
preco decimal(10,2),

PRIMARY KEY(cod),
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)

);

INSERT INTO tb_categoria(nome) VALUES("Açougue");
INSERT INTO tb_categoria(nome) VALUES("Higiene");
INSERT INTO tb_categoria(nome) VALUES("Padaria");
INSERT INTO tb_categoria(nome) VALUES("Bebidas");
INSERT INTO tb_categoria(nome) VALUES("Hortifruti");

INSERT INTO tb_produtos(categoria_id, nome, marca, validade, preco) 
VALUES(1, "Carne - contra file", "Friboi", "2022/11/05", 100.00),
      (4, "Refrigerante", "coca-cola", "2023/01/12", 12.00),
      (5, "Banana", "Oba hortifruti", "2022/05/08", 15.00),
      (2, "Papel higienico", "Neve", "2023/03/25", 60.00),
      (3, "Pão Frances", "França", "2022/04/27", 20.00);
      
      SELECT * FROM tb_produtos;
      SELECT * FROM tb_categoria;
      
      SELECT * FROM tb_produtos WHERE preco > 50;
      SELECT * FROM tb_produtos WHERE nome LIKE "%a%";
      
      UPDATE tb_produtos SET preco = 5.00 WHERE cod = 5;