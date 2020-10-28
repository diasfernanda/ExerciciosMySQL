create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint (5) auto_increment,
categoria varchar (100),
ativo boolean,
primary key (id)
);

insert into tb_categoria(categoria,ativo) values ("Bovino",true);
insert into tb_categoria(categoria,ativo) values ("Bovino",false);
insert into tb_categoria(categoria,ativo) values ("Suíno",true);
insert into tb_categoria(categoria,ativo) values ("Suíno",false);
insert into tb_categoria(categoria,ativo) values ("Aves",true);
insert into tb_categoria(categoria,ativo) values ("Aves",false);


select * from tb_categoria;

create table tb_produtos(
id bigint (5) auto_increment,
nome varchar (30) not null,
preco decimal (10,2),
qtdeProduto varchar (30),
categoria_id bigint (5) not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Patinho Moído",41.00,"500g",1);

insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Filet Mignon Escalope",60.90,"300g",2);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Frango Inteiro Orgânico Korin",53.98,"2.2kg",5);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Strogonoff File Frango",19.00,"400g",6);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Linguiça Toscana Sadia",12.45,"500g",3);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Bacon com Lombo Prieto",55.91,"1kg",4);

insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Filet Mignon Medalhão",65.90,"1kg",1);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Bife de Alcatra",38.90,"1kg",2);
    
select *from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Coxa de Frango Korin",8.99,"600g",3);
    
select * from tb_produtos where nome LIKE "CO%"; 

select * from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select nome,preco,categoria_id, tb_categoria.categoria, tb_categoria.ativo from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where categoria = "Bovino";