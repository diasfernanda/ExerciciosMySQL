create database db_ecommerce2;

use db_ecommerce2;

create table tb_categorias(
id bigint (5) auto_increment,
marca varchar (20),
genero varchar (10),
primary key (id)
);

insert into tb_categorias(marca,genero) values ("Adidas","Feminino");

insert into tb_categorias(marca,genero) values ("Adidas","Masculino");

insert into tb_categorias(marca,genero) values ("Adidas","Infantil");

insert into tb_categorias(marca,genero) values ("Nike","Feminino");

insert into tb_categorias(marca,genero) values ("Nike","Masculino");

insert into tb_categorias(marca,genero) values ("Nike","Infantil");

create table tb_produtos(
id bigint (10) auto_increment,
nome varchar (30) not null,
estoque bigint (8),
preco decimal (10,2),
categorias_id bigint (5),
primary key (id),
foreign key (categorias_id) references tb_categorias (id)
);

insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Top Jordan Jumpman",18,149.99,4);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Jaqueta Sportswear Windrunner",5,299.99,6);

insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Shorts Tempo Luxe",20,219.99,4);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Jaqueta Nike ACG Polar",11,699.99,5);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Jaqueta Corta-Vento R.Y.V.",3,329.99,1);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Jaqueta Puffer Curta",1,549.99,1);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Parka Essentials Down",15,799.99,2);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Camiseta Run It",23,99.99,2);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Calça Must Haves Tiro",10,179.99,3);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Camiseta Trophy",16,69.99,6);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Shorts Dri-Fit Tempo",32,79.99,6);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Blusa Moletom Capuz Disney",3,279.99,3);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Jaqueta Jordan Legacy AJ11",1,444.99,5);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Camiseta Big Graphic",15,79.99,1);
    
insert into tb_produtos(nome,estoque,preco,categorias_id)
	values ("Calça Nike Air Feminino",21,309.99,4);
    
select * from tb_produtos where preco >200.00;

select * from tb_produtos where preco between 100.00 and 200.00;