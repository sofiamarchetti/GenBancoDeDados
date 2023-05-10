select @@version;

create database db_RH;

use db_RH;

create table tb_colaboradores (
	id bigint auto_increment,
    nome varchar(255) not null,
    cpf varchar(255) not null,
    funcao varchar(255) not null,
    salario decimal not null,
    andardopredio int,
    PRIMARY KEY (id)
);

insert into tb_colaboradores (nome,cpf,funcao,salario,andardopredio) values ("Rosarães Guima",25874598636,"gerente",12000.00,20);
insert into tb_colaboradores (nome,cpf,funcao,salario,andardopredio) values ("Paula de Andrade",45789635628,"designer",8000.00,21);
insert into tb_colaboradores (nome,cpf,funcao,salario,andardopredio) values ("Julio Verne",74589632146,"roteirista",8000.00,22);
insert into tb_colaboradores (nome,cpf,funcao,salario,andardopredio) values ("Rosane Schrodinger",75214896532,"carregadora",5000.00,20);
insert into tb_colaboradores (nome,cpf,funcao,salario,andardopredio) values ("Teresa Albuquerque",12458796357,"secretaria",10000.00,23);

select * from tb_colaboradores where salario > 2000.00;

select * from tb_colaboradores where salario < 2000.00;

update tb_colaboradores set salario = 2000.00 where id = 3;