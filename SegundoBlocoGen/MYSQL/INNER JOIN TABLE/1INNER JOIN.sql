CREATE DATABASE db_generation_game_online; 

USE db_generation_game_online;


CREATE TABLE tb_classes (

tb_classesid INT NOT NULL auto_increment, 
classe VARCHAR(15) NOT NULL,
gun VARCHAR (20) NOT NULL,
regiao VARCHAR(30),
PRIMARY KEY(tb_classesid)


);

CREATE TABLE tb_personagem (
 email VARCHAR(30) PRIMARY KEY, 
 nome VARCHAR(20) NOT NULL,
 defense INT NOT NULL, 
 atack INT NOT NULL,
 life INT NULL default 100,
 nivel INT NULL  DEFAULT 0,
 timeplayed INT NULL  DEFAULT 0,
 stamina INT NULL  DEFAULT 100,
 fk_classe INT DEFAULT 1,
 
 FOREIGN KEY(fk_classe) REFERENCES tb_classes(tb_classesid)


);



INSERT INTO tb_classes (classe,gun,regiao) 
VALUES 

("CORREDOR","PISTOLA","RIO DE JANEIRO"),
("BATEDOR","FACA","BAHIA"),
("EXPLORADOR","MAPA","SAO PAULO"),
("INICIANTE","NENHUMA","ACRE");

INSERT INTO  tb_personagem (email,nome,defense,atack,nivel,timeplayed,stamina,fk_classe)
VALUES 


("MARIA@GMAIL.COM","MARIA","1000","2000",100,150,100,1),
("GEOVANA@GMAIL.COM","GEOVANA","2000","3000",130,150,100,3),
("VITU@GMAIL.COM","VITINHO","5000","3000",189,150,100,2),
("VOVÓ@GMAIL.COM","Vovó","8000","7000",8000,152,100,2),
("NEYMAR@GMAIL.COM","NEYMAR","9000","9000",1000,152,100,2),
("GU@GMAIL.COM","GU","1000","1500",150,152,100,2),
("DEYVERSON@GMAIL.COM","DEYVERSON","1000","2000",180,152,100,1),
("JOAOALMEIDA@GMAIL.COM","JOAO","9999","9999",9999,150,100,2);




SELECT * FROM tb_personagem WHERE tb_personagem.nome LIKE 'c%';


SELECT * FROM tb_personagem WHERE ("atack") < 2000 ;

SELECT * FROM tb_personagem WHERE tb_personagem.defense OR tb_personagem.atack BETWEEN 1000 AND 2000;


SELECT * FROM tb_personagem

INNER JOIN tb_classes ON tb_classesid = tb_personagem.fk_classe;

SELECT * FROM tb_personagem

INNER JOIN tb_classes ON tb_classesid = tb_personagem.fk_classe
WHERE tb_classes.classe LIKE 'c%';

