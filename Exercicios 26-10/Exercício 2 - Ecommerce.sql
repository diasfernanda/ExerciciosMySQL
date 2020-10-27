create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint (10) auto_increment,
nome varchar (30) not null,
marca varchar (15),
genero varchar (9),
estoque bigint (8),
preco decimal (10,2),
primary key (id)
);

insert into tb_produtos(nome,marca,genero,estoque,preco)
	value("Top Jordan Jumpman","Nike","Feminino",18,149.99);
    
insert into tb_produtos(nome,marca,genero,estoque,preco)
	value("Jaqueta Sportswear Windrunner","Nike","Infantil",5,299.99);
    
insert into tb_produtos(nome,marca,genero,estoque,preco)
	value("Shorts Tempo Luxe","Nike","Feminino",20,219.99);
    
insert into tb_produtos(nome,marca,genero,estoque,preco)
	value("Jaqueta Nike ACG Polar","Nike","Masculino",11,699.99);
    
insert into tb_produtos(nome,marca,genero,estoque,preco)
	value("JAQUETA CORTA-VENTO R.Y.V.","Adidas","Feminino",3,329.99);
    
insert into tb_produtos(nome,marca,genero,estoque,preco)
	value("JAQUETA PUFFER CURTA","Adidas","Feminino",1,549.99);
    
insert into tb_produtos(nome,marca,genero,estoque,preco)
	value("PARKA ESSENTIALS DOWN","Adidas","Masculino",15,799.99);
    
insert into tb_produtos(nome,marca,genero,estoque,preco)
	value("CAMISETA RUN IT","Adidas","Masculino",23,99.99);
    
    select * from tb_produtos;
    
    select * from tb_produtos where preco > 500;
    
    select * from tb_produtos where preco < 500;
    
    update tb_produtos set marca = "Adidas" where id = 2;
    
	    select * from tb_produtos;
        
    
    
    
    