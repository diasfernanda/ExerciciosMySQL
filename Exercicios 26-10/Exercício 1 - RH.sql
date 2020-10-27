create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint (10) auto_increment,
nome varchar (30) not null,
ativo boolean,
cpf varchar (14) not null,
cargo varchar (50),
salario decimal (10,2),

primary key (id)

);

select * from tb_funcionarios;

insert into tb_funcionarios(nome,ativo,cpf,cargo,salario)
	values ("Ana Oliveira",true,"464.027.665-06","Estagiária",1900.00);
    
    insert into tb_funcionarios(nome, ativo,cpf, cargo, salario)
	values ("Maria Julia Souza",true,"184.025.895-10","Desenvolvedora Java Júnior",5000.00);
    
insert into tb_funcionarios(nome, ativo, cpf, cargo, salario)
	values ("Larissa Gonçalves",false,"142.548.523-52", "Desenvolvedora Java Pleno",10000.00);
    
insert into tb_funcionarios(nome, ativo, cpf, cargo, salario)
	values ("Juliana Pessoa",true,"158.965.841-41", "Desenvolvedora Java Pleno",10000.00);
    
    insert into tb_funcionarios(nome, ativo, cpf, cargo, salario)
	values ("Carolina Martins",true,"085.567.869-47", "Gerente de TI",30000.00);
    
    select * from tb_funcionarios;
    
    select * from tb_funcionarios where salario < 2000;
    
    select * from tb_funcionarios where salario > 2000;
    
update tb_funcionarios set nome = "Maria Clara Souza" where id = 2;

   select * from tb_funcionarios;
