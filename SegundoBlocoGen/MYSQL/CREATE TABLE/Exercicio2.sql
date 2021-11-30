create database loja; 


use  loja;

create table tb_produtos(

	id bigint(8) auto_increment,
    nome VARCHAR(30),
    codigodebarras INT (15),
    cor VARCHAR(30),
    preço FLOAT (10,000),   
	ativo BOOLEAN,
    PRIMARY KEY(id)

);

INSERT INTO tb_produtos (nome,codigodebarras,cor,preco,ativo) VALUES ("SANSUNG","12345","AZUL","1500", true);
INSERT INTO tb_produtos (nome,codigodebarras,cor,preco,ativo) VALUES ("IPHONE","12345","PRETO","3500", true);
INSERT INTO tb_produtos (nome,codigodebarras,cor,preco,ativo) VALUES ("LG","12345","AZUL","500", true);
INSERT INTO tb_produtos (nome,codigodebarras,cor,preco,ativo) VALUES ("XIOAMI","12345","AZUL","500", true);
INSERT INTO tb_produtos (nome,codigodebarras,cor,preco,ativo) VALUES ("TOSHIBA","12345","AZUL","300", true);
INSERT INTO tb_produtos (nome,codigodebarras,cor,preco,ativo) VALUES ("GOOGLE","12345","BRANCO","4500", true);
INSERT INTO tb_produtos (nome,codigodebarras,cor,preco,ativo) VALUES ("BEATS","12345","AMARELO","1500", true);
INSERT INTO tb_produtos (nome,codigodebarras,cor,preco,ativo) VALUES ("AIRPODS","12345","BRANCO","1500", true);


select * from  tb_produtos where id > 2;

select * from  tb_produtos where id < 2
