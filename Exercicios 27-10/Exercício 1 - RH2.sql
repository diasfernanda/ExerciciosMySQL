create database db_RH2;

use db_RH2;

create table tb_cargo(
id bigint (4) auto_increment,
funcao varchar (50),
nivel varchar (10),
contratacao varchar (30),
primary key (id)
);


insert into tb_cargo (funcao,nivel,contratacao) values ("Desenvolvedor Java","Júnior","CLT");

insert into tb_cargo (funcao,nivel,contratacao) values ("Desenvolvedor Java","Júnior","PJ");

insert into tb_cargo (funcao,nivel,contratacao) values ("Desenvolvedor Java","Pleno","CLT");

insert into tb_cargo (funcao,nivel,contratacao) values ("Desenvolvedor Java","Pleno","PJ");

insert into tb_cargo (funcao,nivel,contratacao) values ("Desenvolvedor Java","Sênior","CLT");


create table tb_funcionarios(
id bigint (6) auto_increment,
nome varchar (30),
cpf varchar (14),
ativo boolean,
salario decimal (10,2),
cargo_id bigint (4) not null,
primary key (id),
foreign key (cargo_id) references tb_cargo (id)
);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Ana","123.456.789-10",true,1900.00,1);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values("Maria","223.456.789-11",true,8000.00,3);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Pedro","323.456.789-12",false,11.0000,5);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Luiza","123.456.789-13",true,10000.00,5);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Carol","423.456.789-10",false,1900.00,1);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Julio","523.456.789-10",true,1900.00,1);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Camila","623.456.789-10",false,8000.00,3);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Fernanda","123.456.789-05",true,8000.00,3);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Ricardo","223.256.789-05",false,6000.00,2);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Rafael","323.356.789-05",true,8200.00,4);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Cézar","423.456.499-05",true,6100.00,2);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Roberto","923.456.489-81",false,8200.00,4);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Maria Clara","113.156.489-05",false,8550.00,4);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("Marcela","723.476.779-13",true,10000.00,5);

insert into tb_funcionarios(nome,cpf,ativo,salario,cargo_id)
	values ("João Pedro","777.826.790-89",true,8000.00,3);
    
    select * from tb_funcionarios where salario > 2000;
    
	select * from tb_funcionarios where salario between 1000.00 and 2000.00;
    
	update tb_funcionarios set salario = 11000.00 where id = 3;
    
	select * from tb_funcionarios where id = 3;
        
	select * from tb_funcionarios where nome LIKE "C%";
    
     
    
