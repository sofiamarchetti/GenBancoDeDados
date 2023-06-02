create database db_escola;

use db_escola;

create table tb_alunos (tb_alunos
	id bigint auto_increment,
    nome varchar(255) not null,
    anodenascimento int,
    turma varchar(255) not null,
    professore varchar(255) not null,
    nota decimal not null,    
    PRIMARY KEY (id)
);

insert into tb_alunos (nome,anodenascimento,turma,professore,nota) values ("Lucca Nunes",1970,"Aquário","Fátima Raimunda",10.0);
insert into tb_alunos (nome,anodenascimento,turma,professore,nota) values ("Pietro Galvão",1988,"Gêmeos","Melissa Natália",6.0);
insert into tb_alunos (nome,anodenascimento,turma,professore,nota) values ("Gustavo Teixeira",1989,"Touro","Valentina Lavínia",3.5);
insert into tb_alunos (nome,anodenascimento,turma,professore,nota) values ("Antonella Brito",1977,"Gêmeos","Melissa Natália",9.0);
insert into tb_alunos (nome,anodenascimento,turma,professore,nota) values ("Betina Tânia",2001,"Gêmeos","Melissa Natália",4.6);
insert into tb_alunos (nome,anodenascimento,turma,professore,nota) values ("Bárbara Aragão",1953,"Capricórnio","Analu Julia",5.0);
insert into tb_alunos (nome,anodenascimento,turma,professore,nota) values ("Simone Araújo",1960,"Peixes","Miguel Araújo",2.3);
insert into tb_alunos (nome,anodenascimento,turma,professore,nota) values ("Pietra da Cunha",1977,"Áries","Daniel da Cunha",10.0);

select * from tb_alunos where nota > 7.0;

select * from tb_alunos where nota < 7.0;

update tb_alunos set nota = 5.0 where id = 7;