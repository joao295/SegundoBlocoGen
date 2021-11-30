create database db_escola ;

use db_escola; 


CREATE TABLE tb_alunos(

id BIGINT (8),
nome VARCHAR(30), 
nomedamãe VARCHAR(30),
nomedopai VARCHAR(30),
matricula INT(6),
turma VARCHAR(3),
ano VARCHAR (1),
turno VARCHAR (10),
nota DECIMAL(10,0)

);

ALTER TABLE tb_alunos

ADD PRIMARY KEY(id);

INSERT INTO tb_alunos (id,nome,nomedamãe,nomedopai,matricula,turma,ano,turno,nota) VALUES (1,"JOAO","ANDREIA","NATAL","123456","A","3","manha","8.00");
INSERT INTO tb_alunos (id,nome,nomedamãe,nomedopai,matricula,turma,ano,turno,nota) VALUES (2,"MANUELA","LARISSA","JOAO","346789","B","1","tarde","10.00");
INSERT INTO tb_alunos (id,nome,nomedamãe,nomedopai,matricula,turma,ano,turno,nota) VALUES (3,"DAVI","ELIZA","NEYMAR","346789","C","2","tarde","7.00");
INSERT INTO tb_alunos (id,nome,nomedamãe,nomedopai,matricula,turma,ano,turno,nota) VALUES (4,"NEYMAR","MARIA","NEYMARPAI","346589","C","2","tarde","4.00");
INSERT INTO tb_alunos (id,nome,nomedamãe,nomedopai,matricula,turma,ano,turno,nota) VALUES (5,"MARIA","GEOVANA","ARBOLEFA","336589","C","2","tarde","9.00");
INSERT INTO tb_alunos (id,nome,nomedamãe,nomedopai,matricula,turma,ano,turno,nota) VALUES (6,"CRISTIANO RONALDO","MARIA","HELIO","336119","B","2","tarde","9.00");
INSERT INTO tb_alunos (id,nome,nomedamãe,nomedopai,matricula,turma,ano,turno,nota) VALUES (7,"MESSI","MARIA","LUIZ","927192","C","2","tarde","3.00");
INSERT INTO tb_alunos (id,nome,nomedamãe,nomedopai,matricula,turma,ano,turno,nota) VALUES (8,"LEILA","ARLINDA","LUIZ","917192","C","2","manha","9.00");
  
   
 select * from  tb_alunos where nota > 7;
 
 select * from  tb_alunos where nota < 7;
 
 
 
 
   
 
 
 
 
 
 
 
 
 