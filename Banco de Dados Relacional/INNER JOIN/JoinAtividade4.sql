create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

create table tb_categorias(
    id bigint auto_increment,
    nome varchar(255) not null,
    categoria varchar(255) not null,
    PRIMARY KEY(id)
);

create table tb_produtos(
    id bigint auto_increment,
    nome varchar(255) not null,
    fazenda varchar(255) not null,
    preco decimal not null,
    quantidade_estoque INT(3),
    id_categorias BIGINT,
	PRIMARY key(id)
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_id_categorias FOREIGN KEY (id_categorias) REFERENCES tb_categorias (id);

insert into tb_categorias (nome,categoria) values ("Frutas refrigeradas","Frutas");
insert into tb_categorias (nome,categoria) values ("Legumes refrigerados","Legumes");
insert into tb_categorias (nome,categoria) values ("Verduras refrigeradas","Verduras");
insert into tb_categorias (nome,categoria) values ("Sucos","Industrializados");
insert into tb_categorias (nome,categoria) values ("Frutas sem refrigeração","Frutas");

insert into tb_produtos (nome,fazenda,preco,quantidade_estoque,id_categorias) values ("Cenoura","Caranguejo",31.24,4,2);
insert into tb_produtos (nome,fazenda,preco,quantidade_estoque,id_categorias) values ("Lima","Costura",95.35,44,5);
insert into tb_produtos (nome,fazenda,preco,quantidade_estoque,id_categorias) values ("Espinafre","Mostarda",8.45,17,3);
insert into tb_produtos (nome,fazenda,preco,quantidade_estoque,id_categorias) values ("Manga","Selvagem",65.67,53,4);
insert into tb_produtos (nome,fazenda,preco,quantidade_estoque,id_categorias) values ("Caqui","Sanduíche",41.91,30,1);
insert into tb_produtos (nome,fazenda,preco,quantidade_estoque,id_categorias) values ("Repolho","Raiz",14.94,76,2);
insert into tb_produtos (nome,fazenda,preco,quantidade_estoque,id_categorias) values ("Groselha","Xilofone",22.84,15,4);
insert into tb_produtos (nome,fazenda,preco,quantidade_estoque,id_categorias) values ("Amora","Barriga",66.61,34,1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_produtos WHERE nome LIKE "c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categorias;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categorias WHERE tb_categorias.categoria = "Frutas";

SELECT * FROM tb_produtos