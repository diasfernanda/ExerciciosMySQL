create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint (6) auto_increment,
categoria varchar (300),
ativo boolean,
primary key (id)
);

insert into tb_categoria(categoria,ativo) values ("Materiais de Construção",true);
insert into tb_categoria(categoria,ativo) values ("Materiais de Construção",false);
insert into tb_categoria(categoria,ativo) values ("Pisos e Revestimentos",true);
insert into tb_categoria(categoria,ativo) values ("Pisos e Revestimentos",false);
insert into tb_categoria(categoria,ativo) values ("Material Hidráulico",true);
insert into tb_categoria(categoria,ativo) values ("Material Hidráulico",false);


create table tb_produtos(
id bigint (6) auto_increment,
nome varchar (300) not null,
preco decimal (10,2),
qtdeProduto varchar (25),
categoria_id bigint (5) not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Cimento Queimado Pronto Platina",69.99,"5kg",1);

insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Argamassa para Pedras Naturais Branca",37.99,"20kg",2);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Piso Brilhante Borda Bold Volga",21.99,"1 unidade",3);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Piso Borda Bold Fileto 12,5x26cm",44.99,"1 unidade",4);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Joelho 90° Soldável 20mm Marrom",0.99,"1 unidade",5);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Caixa de Gordura Dn100 Cinza",282.99,"1 unidade",6);

insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Grelha Fixa Retangular 20x100cm Alumínio",143.99,"1 unidade",5);
    
insert into tb_produtos(nome,preco,qtdeProduto,categoria_id)
	values ("Cimento Cp Ii-32",24.99,"50kg",1);
    
select *from tb_produtos;


select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome LIKE "CI%"; 

select * from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select nome,preco,categoria_id, tb_categoria.categoria, tb_categoria.ativo from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where categoria = "Pisos e Revestimentos";



