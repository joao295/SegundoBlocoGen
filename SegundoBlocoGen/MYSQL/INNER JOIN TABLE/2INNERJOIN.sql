CREATE DATABASE db_pizzaria_legal;


USE db_pizzaria_legal;


CREATE TABLE tb_categoria (

 id_categoria INT NOT NULL auto_increment, 
 tamanho VARCHAR (15)  NOT NULL, 
 ingredientes VARCHAR (15)  NOT NULL,
 entrega VARCHAR (15)  NOT NULL,
 PRIMARY KEY(id_categoria)

 ) ;


INSERT INTO tb_categoria (tamanho,ingredientes,entrega)

VALUES ("p","premium","grátis"),
	   ("m","premium","grátis")	,
       ("g","premium","grátis"),
       ("p","naturais","paga"),
	("g","naturais","paga");
         
         
         
CREATE TABLE tb_pizza (

 nomedocliente VARCHAR (30),
 nomedapizza VARCHAR (30)  NOT NULL, 
 preco INT (200),
 endereço VARCHAR (50)  NOT NULL,
 desconto INT (200),
  fk_categoria INT DEFAULT 1,

 FOREIGN KEY(fk_categoria) REFERENCES tb_categoria(id_categoria)

 

 ) ;
         
INSERT INTO  tb_pizza (nomedocliente,nomedapizza,endereço,preco,desconto,fk_categoria)
VALUES


("Alessandra","Queijo","Rua Guanabara","75","15",1),
("Neymar","Carne","Rua Paris","35","35",5),    
 ("Deyverson","Polento","Rua Palmeiras","135","35",3),     
  ("Dudu","Polento","Rua Palmeiras","29","5",4),
    ("Veiga","Polento","Rua Palmeiras","60","5",4),
        ("Weverton","Polento","Rua Palmeiras","65","5",4),
        ("Abel","Portguesa","Rua Elvis","95","5",3),
         ("Joao","Calabresa","Rua porto alegre","60","10",1);
         
         
         SELECT * FROM tb_pizza WHERE ("preco") < 45 ;
         
         SELECT * FROM tb_pizza WHERE tb_pizza.nomedapizza LIKE 'c%';
      
      SELECT * FROM tb_pizza 
         INNER JOIN tb_categoria ON id_categoria = tb_pizza.fk_categoria;
         
         SELECT * FROM tb_pizza 
         INNER JOIN tb_categoria ON id_categoria = tb_pizza.fk_categoria
         WHERE tb_categoria.tamanho LIKE 'p%';
	
    
    