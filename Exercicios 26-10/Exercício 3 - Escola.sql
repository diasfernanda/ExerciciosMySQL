create database db_escola;

use db_escola;

create table tb_classes(
id bigint (2) auto_increment,
turma varchar (8),
primary key (id)
);

insert into tb_classes(turma) values ("1º ano A");

insert into tb_classes(turma) values ("1º ano B");

insert into tb_classes(turma) values ("2º ano A");

insert into tb_classes(turma) values ("2º ano B");

insert into tb_classes(turma) values ("3º ano A");

insert into tb_classes(turma) values ("3º ano B");

select * from tb_classes;

create table tb_alunos(
id bigint (5) auto_increment,
nome varchar (25) not null,
matricula bigint (10),
nota decimal (10,2),
recuperacao boolean,
turma_id bigint not null,
primary key (id),
foreign key (turma_id) references tb_classes (id)
);

insert into tb_alunos(nome, matricula, nota, recuperacao, turma_id)
values ("Mariana Ribeiro",400050,10.00,false,1);
insert into tb_alunos(nome, matricula, nota, recuperacao, turma_id)
values ("Luísa Cardoso",400053,8.00,false,2);
insert into tb_alunos(nome, matricula, nota, recuperacao, turma_id)
values ("Felipe de Lima",400060,4.30,true,3);
insert into tb_alunos(nome, matricula, nota, recuperacao, turma_id)
values ("Julia Souza",400052,8.70,false,4);
insert into tb_alunos(nome, matricula, nota, recuperacao, turma_id)
values ("Camila Pimentel",400061,7.73,false,1);
insert into tb_alunos(nome, matricula, nota, recuperacao, turma_id)
values ("João Pedro Gomes",400051,3.70,true,5);
insert into tb_alunos(nome, matricula, nota, recuperacao, turma_id)
values ("Luan Silva",400065,8.50,false,6);
insert into tb_alunos(nome, matricula, nota, recuperacao, turma_id)
values ("Julia Pedroso",400073,9.70,false,4);

select*from tb_alunos;

select*from tb_alunos where nota>7.00;

select*from tb_alunos where nota<7.00;

update tb_alunos set matricula = 400074 where id = 1;

select*from tb_alunos;