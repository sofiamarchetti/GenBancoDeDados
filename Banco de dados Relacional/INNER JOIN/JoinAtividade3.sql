create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
    id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(255) not null,
    PRIMARY KEY(id)
);

create table tb_produtos(
    id bigint auto_increment,
    nome varchar(255) not null,
    fabricante varchar(255) not null,
    preco decimal not null,
    quantidade_estoque INT(3),
    id_categorias BIGINT,
	PRIMARY key(id)
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_id_categorias FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id);

insert into tb_categorias (nome,categoria) values ("Antigripais","Medicamentos");
insert into tb_categorias (nome,categoria) values ("Anticoncepcionais","Medicamentos");
insert into tb_categorias (nome,categoria) values ("Produtos para o cabelo","Cosméticos");
insert into tb_categorias (nome,categoria) values ("Maquiagens","Cosméticos");
insert into tb_categorias (nome,categoria) values ("Proteção pessoal","Higiene");

insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Desentupex","Quemanto",38.12,10,1);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Progestina","Queprerv",14.33,24,2);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Escova de cabelo","Chococon",19.54,17,3);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Batom","Tuquetem",43.60,74,4);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Máscara tripla","Calabre",36.91,23,5);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Dipirona","Vranca",19.95,58,1);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Gel de cabelo","Tuquetem",45.70,12,3);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Blush","Coco",58.90,3,4);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categorias;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categorias WHERE tb_categorias.categoria = "Cosméticos";

SELECT * FROM tb_produtos