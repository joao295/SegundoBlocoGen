CREATE DATABASE bd_rh;


use bd_rh; 


CREATE TABLE funcionarios(

nome VARCHAR(30),
datadeadimissão DATE,
cracha INT(10), 
salario INT(5.500),
turno VARCHAR(15)
 




);



INSERT INTO funcionarios (nome,datadeadimissão,cracha,salario,turno)

VALUES ("JOAO","05.05.2022","1234567890","1000","MANHA"),
		("JOANA","06.05.2022","1233567890","2000","NOITE"),
				("ESTER","06.05.2022","1233567810","2000","NOITE"),
                ("GEOVANA","06.08.2022","1231567810","1000","NOITE"),
                   ("MARIA","06.09.2022","1231567810","5000","NOITE");
                   
                   
    SELECT * FROM funcionarios WHERE ("salario") > 2000 ;               
                   
	SELECT * FROM funcionarios WHERE ("salario") < 1500 ;                     
                