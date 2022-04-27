CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
nome varchar(255),
arma varchar(255),

PRIMARY KEY(id)
);

INSERT INTO tb_classes(nome, arma)
VALUES("Atirador", "Sniper"),
      ("Flecheiro", "Arco e Flecha"),
      ("linha de frente","Metralhadora"),
	  ("Médico","Pistola"),
      ("Escudeiro","Escudo");
      
CREATE TABLE tb_personagens(
id bigint auto_increment,
classe_id bigint,
nome varchar(255),
poder_ataque int(15),
defesa int(15),

PRIMARY KEY(id),
FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(classe_id, nome, poder_ataque, defesa)
VALUES(1, "Tyler", 4000, 1000),
	  (1, "Rau", 4050, 500),
      (2, "Xand", 2000, 2000),
      (3, "Lau", 3000, 2500),
      (3, "Mark", 3500, 4000),
      (4, "Luk", 1000, 5000),
      (5, "Mik", 0, 3000),
      (5, "Myle", 0, 3500);
      
      SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
      SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;
      
       SELECT * FROM tb_personagens WHERE nome LIKE "%C%";
       
        SELECT * FROM tb_personagens INNER JOIN tb_classes ON classe_id = tb_classes.id ;
        SELECT * FROM tb_personagens INNER JOIN tb_classes ON classe_id = tb_classes.id WHERE tb_classes.nome LIKE "%Atirador%";
        
      