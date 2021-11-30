CREATE DATABASE db_blogpessoal; 

USE db_blogpessoal; 

CREATE TABLE tb_usuario(

id_usuario BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY , 
nome VARCHAR (50),
usuario	VARCHAR (50),
senha VARCHAR (10), 
foto VARCHAR (255)


);


CREATE TABLE tb_postagens(

id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY , 
titulo VARCHAR (50),
tema VARCHAR (50),
texto VARCHAR (10), 
dataA DATE,
fk_usuario BIGINT,
fk_tema BIGINT,
FOREIGN KEY (fk_usuario) REFERENCES tb_usuario(id_usuario),
FOREIGN KEY (fk_tema) REFERENCES tb_tema(id_tema)
    
    
    );



CREATE TABLE tb_tema(

id_tema BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
descricao VARCHAR (255)

);

