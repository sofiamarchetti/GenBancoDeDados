create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categorias(
    id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(255) not null,
    PRIMARY KEY(id)
);

create table tb_cursos(
    id bigint auto_increment,
    nome varchar(255) not null,
    instrutore varchar(255) not null,
    preco decimal not null,
    nummax_inscritos INT(3),
    id_categorias BIGINT,
	PRIMARY key(id)
);

ALTER TABLE tb_cursos ADD CONSTRAINT fk_id_categorias FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id);

insert into tb_categorias (nome,categoria) values ("Variáveis","Java");
insert into tb_categorias (nome,categoria) values ("React","Front-end");
insert into tb_categorias (nome,categoria) values ("React Native","Mobile");
insert into tb_categorias (nome,categoria) values ("Classes","Java");
insert into tb_categorias (nome,categoria) values ("Angular","Front-end");

insert into tb_cursos (nome,instrutore,preco,nummax_inscritos,id_categorias) values ("Variáveis locais","Sarah Pereira",922.32,1675,1);
insert into tb_cursos (nome,instrutore,preco,nummax_inscritos,id_categorias) values ("Gerenciamento de estados globais","Bruna Batista",1001.42,821,2);
insert into tb_cursos (nome,instrutore,preco,nummax_inscritos,id_categorias) values ("Utilizando e criando Hooks","Isabelly Oliveira",976.53,1397,3);
insert into tb_cursos (nome,instrutore,preco,nummax_inscritos,id_categorias) values ("Pacotes","Ana Clara Silva",1515.11,1595,4);
insert into tb_cursos (nome,instrutore,preco,nummax_inscritos,id_categorias) values ("Design de componentes com acessibilidade","Ana Clara Melo",1902.53,62,5);
insert into tb_cursos (nome,instrutore,preco,nummax_inscritos,id_categorias) values ("Variáveis de instância","Karla Martins",841.19,402,1);
insert into tb_cursos (nome,instrutore,preco,nummax_inscritos,id_categorias) values ("Integrando seu projeto React com APIs","Carla Saraiva",353.12,1393,2);
insert into tb_cursos (nome,instrutore,preco,nummax_inscritos,id_categorias) values ("Criando testes para sua aplicação","Maria Luiza Costa",1248.11,1844,3);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.id_categorias;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.id_categorias WHERE tb_categorias.categoria = "Java";

SELECT * FROM tb_cursos