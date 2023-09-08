create database db_construindo_vidas;
use db_construindo_vidas;

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

insert into tb_categorias (nome,categoria) values ("Acessórios","Hidráulica");
insert into tb_categorias (nome,categoria) values ("EPI","Ferramentas");
insert into tb_categorias (nome,categoria) values ("Tapetes e capachos","Decoração");
insert into tb_categorias (nome,categoria) values ("Canos e conexões","Hidráulica");
insert into tb_categorias (nome,categoria) values ("Para furar e parafusar","Ferramentas");

insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Mangueira para máquina de lavar","Sorriso",42.64,84,1);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Capacete","Rung",54.50,60,2);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Tapete atraente","Principal",49.29,58,3);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Cano para água fria","Violoncelo",37.62,46,4);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Parafusadeira","Leme",1.58,62,5);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Canopla","Poema",63.34,22,1);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Abafador de ruído","Chave",23.53,100,2);
insert into tb_produtos (nome,fabricante,preco,quantidade_estoque,id_categorias) values ("Passadeira","Primo",71.59,45,3);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categorias;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categorias WHERE tb_categorias.categoria = "Hidráulica";

SELECT * FROM tb_produtos