create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint (6) auto_increment,
categoria varchar (300),
ativo boolean,
primary key (id)
);

insert into tb_categoria(categoria,ativo) values ("TI e software",true);
insert into tb_categoria(categoria,ativo) values ("TI e software",false);
insert into tb_categoria(categoria,ativo) values ("Fotografia e Vídeo",true);
insert into tb_categoria(categoria,ativo) values ("Fotografia e Vídeo",false);
insert into tb_categoria(categoria,ativo) values ("Culinária",true);
insert into tb_categoria(categoria,ativo) values ("Culinária",false);


create table tb_curso(
id bigint (6) auto_increment,
nome varchar (300) not null,
idioma varchar (250),
legenda varchar (300),
preco decimal (10,2),
categoria_id bigint (5) not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso(nome,idioma,legenda,preco,categoria_id)
	values ("Preparatório para Certificação Linux LPIC-1 Atualizado V5","Português","Português/Automático",69.90,1);

insert into tb_curso(nome,idioma,legenda,preco,categoria_id)
	values ("Java COMPLETO 2020 Programação Orientada a Objetos +Projetos","Espanhol","Português",24.90,2);
    
insert into tb_curso(nome,idioma,legenda,preco,categoria_id)
	values ("Curso Tempero é Para Todo Mundo!","Português","Português/Automático",21.99,5);
    
insert into tb_curso(nome,idioma,legenda,preco,categoria_id)
	values ("How To Make Japanese Ramen","Inglês","Português",79.90,6);
    
insert into tb_curso(nome,idioma,legenda,preco,categoria_id)
	values ("Mastering Architecture and Real Estate Photography","Epanhol","Português",74.90,3);
    
insert into tb_curso(nome,idioma,legenda,preco,categoria_id)
	values ("Mastering Architecture and Real Estate Photography","Inglês","Português",39.90,4);

insert into tb_curso(nome,idioma,legenda,preco,categoria_id)
	values ("Homemade Southern Foods","Inglês","Inglês/Automático",22.50,5);
    
insert into tb_curso(nome,idioma,legenda,preco,categoria_id)
	values ("Curso Completo JAVA - Banco de Dados, JDBC, Hibernate e JPA","Inglês","Português",69.90,1);
    
select *from tb_curso;

select * from tb_curso where preco > 50.00;

select * from tb_curso where preco between 3.00 and 60.00;

select * from tb_curso where nome LIKE "%JAV%"; 

select * from tb_curso
inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select nome,preco,categoria_id, tb_categoria.categoria, tb_categoria.ativo from tb_curso
inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where categoria = "Culinária";