CREATE DATABASE db_farmacia_do_bem;

use db_farmacia_do_bem;


CREATE TABLE tb_categoria(

id_categoria INT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(30),
idade int(18),
receita VARCHAR(06),
PRIMARY KEY(id_categoria)

);


CREATE TABLE tb_produtos(

nome VARCHAR(30),
preco INT NOT NULL,
validade DATE NOT NULL,
peso INT NOT NULL ,
fk_categoria INT DEFAULT 1,
FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_categoria)

);




INSERT INTO tb_categoria(tipo,idade,receita)

VALUES  ("GENERICO","18","SIM"),
		("MARCA","14","NÃO"),
        ("GENERICO","14","SIM"),
		("GENERICO","18","SIM"),
		("GENERICO","10","NÃO");




INSERT INTO tb_produtos (nome,preco,validade,peso,fk_categoria) 

VALUES ("ADVIL","15","01.01.2022","500","1"),
 ("XAROPE","20","01.01.2022","600","2"),
 ("DRAMIN","35","06.04.2022","600","2"),
 ("DIPIRONA","55","03.04.2022","600","2"),
 ("FRANCOL","67","03.04.2022","600","2");
 
 
 SELECT * FROM tb_produtos
 INNER JOIN tb_categoria ON id_categoria = tb_produtos.fk_categoria

 
 
 

 
 
 